class Player < ApplicationRecord
  belongs_to :Country
  belongs_to :Team

  validates :full_Name, :rating, :jersey_No, presence: true
  validates :full_Name, uniqueness: true
  validates :rating, :jersey_No, :weight, numericality: { only_integer: true }
  validates :salary, numericality: true
end
