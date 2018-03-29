class Mission < ActiveRecord::Base
  belongs_to :pilot
  belongs_to :spacecraft

  def missionInfo

    "Destination: #{self.destination}
    Launch Date: #{self.launch_date}
    Total Distance: #{self.total_distance}
    Spacecraft: #{self.spacecraft.name}"

  end

  def stdInfo
    "Mission Name: #{self.name}"
  end

end
