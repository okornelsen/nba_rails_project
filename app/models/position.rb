class Position < ApplicationRecord
  has_many :player_positions
  has_many :players, through: :player_positions

  validates :position, presence: true
end
