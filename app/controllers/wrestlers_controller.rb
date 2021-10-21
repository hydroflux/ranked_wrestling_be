# frozen_string_literal: true

class WrestlersController < ApplicationController
  def index
    @all_wrestlers = Wrestler.all

    render json: @all_wrestlers
  end

  def show
    @wrestler = Wrestler.find(params[:id])

    render json: @wrestler
  end

  def create
    @wrestler = Wrestler.new(wrestler_params)
    if @wrestler.valid?
      @wrestler.save
      render json: @wrestler, message: "#{@wrestler.name} created."
    else
      render json: { errors: @wrestler.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def wrestler_params
    params.require(:wrestler).permit(
      :name,
      :team,
      :league,
      :division,
      :level,
      :weight,
      :win,
      :loss
    )
  end
end
