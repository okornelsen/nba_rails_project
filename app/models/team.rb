class Team < ApplicationRecord
  belongs_to :Arena

  validates :city, :name, :abbreviation, presence: true
end
