class Team < ApplicationRecord
  belongs_to :arena
  has_many :team_fans
  has_many :fans, through: :team_fans
  has_many :players

  validates :city, :name, :abbreviation, presence: true
end
