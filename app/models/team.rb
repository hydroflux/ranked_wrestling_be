class Team < ApplicationRecord
  validates :name, presence: true
  validates :abbreviation, presence: true

  belongs_to :league
  has_many :wrestlers
end
