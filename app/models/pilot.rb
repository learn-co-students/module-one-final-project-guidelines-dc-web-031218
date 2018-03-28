class Pilot < ActiveRecord::Base
  has_many :missions
  has_many :spacecrafts, through: :missions
end