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

end
