class PlayerPosition < ApplicationRecord
  belongs_to :Player
  belongs_to :Position
end
