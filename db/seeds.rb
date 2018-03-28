Pilot.delete_all
Spacecraft.delete_all
Mission.delete_all

austin = Pilot.create(:name=>"Austin", :country_of_origin=>"USA", :age=>25, :gender=>"M")
julio = Pilot.create(:name=> "Julio", :country_of_origin=> "USA", :age=> 27, :gender=> "M")
jerry = Pilot.create(:name=> "Jerry", :country_of_origin=> "USA", :age=> 22, :gender=> "M")
rob = Pilot.create(:name=> "Rob", :country_of_origin=> "Canada", :age=> 25, :gender=> "M")

falcon_X = Spacecraft.create(:name=> "Falcon X", :year_built=> 2017, :max_capacity=> 5)
falcon_Heavy_X = Spacecraft.create(:name=> "Falcon Heavy X", :year_built=> 2018 , :max_capacity=> 6)
discovery = Spacecraft.create(:name=> "Discovery", :year_built=> 2000, :max_capacity=> 7)

apollo = Mission.create(:name=> "Apollo", :launch_date=> 2030, :total_distance=> 34000000, :destination=> "Mars")
operation_X = Mission.create(:name=> "Operation X", :launch_date=> 2020, :total_distance=> 240000, :destination=> "Moon")
galex = Mission.create(:name=> "GALEX", :launch_date=> 2018, :total_distance=> 870000000, :destination=> "Titan")