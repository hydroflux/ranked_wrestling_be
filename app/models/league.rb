class League < ApplicationRecord
  validates :name, presence: true
  validates :state, presence: true
  validates :division, presence: true
  validates :division_abbreviation, presence: true

  has_many :teams
end
