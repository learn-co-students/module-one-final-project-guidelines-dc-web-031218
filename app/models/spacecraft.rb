class Spacecraft < ActiveRecord::Base
  has_many :missions
  has_many :pilots, through: :missions

  def stdInfo
    "Spacecraft Name: #{self.name}"
  end

end
