class Player < ApplicationRecord
  belongs_to :Country
  belongs_to :Team
end
