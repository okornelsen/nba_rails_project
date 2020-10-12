class Country < ApplicationRecord
  has_many :players

  validates :name, :region, presence: true
  validates :population, numericality: { only_integer: true }
end
