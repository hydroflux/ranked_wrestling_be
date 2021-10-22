# frozen_string_literal: true

class Wrestler < ApplicationRecord
  validates :name, presence: true
  validates :level, presence: true
  validates :weight, presence: true
  validates :win, presence: true
  validates :loss, presence: true

  # has_many :matches
  # has_many :events, through: :matches
  belongs_to :team
  has_one :league, through: :team
end
