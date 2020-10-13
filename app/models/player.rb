class Player < ApplicationRecord
  belongs_to :country
  belongs_to :team
  has_many :player_positions
  has_many :positions, through: :player_positions

  validates :full_Name, :rating, :jersey_No, presence: true
  validates :full_Name, uniqueness: true
  validates :rating, :jersey_No, :weight, numericality: { only_integer: true }
  validates :salary, numericality: true
end
