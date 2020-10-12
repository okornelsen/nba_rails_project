class Country < ApplicationRecord
  validates :name, :region, presence: true
  validates :population, numericality: { only_integer: true }
end
