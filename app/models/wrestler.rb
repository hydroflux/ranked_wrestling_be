# frozen_string_literal: true

class Wrestler < ApplicationRecord
  validates :name, presence: true
  validates :team, presence: true
  validates :league, presence: true
  validates :division, presence: true
  validates :level, presence: true
  validates :weight, presence: true
  validates :win, presence: true
  validates :loss, presence: true

  # has_many :matches
  # has_many :events, through: :matches
  # belongs_to: :team
end
