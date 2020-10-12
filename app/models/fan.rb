class Fan < ApplicationRecord
  has_many :team_fans
  has_many :teams, through: :team_fans

  validates :full_Name, presence: true
end
