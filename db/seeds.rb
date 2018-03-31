Pilot.delete_all
Spacecraft.delete_all
Mission.delete_all

austin = Pilot.create(:name=>"Austin", :country_of_origin=>"USA", :age=>25, :gender=>"M")
julio = Pilot.create(:name=> "Julio", :country_of_origin=> "USA", :age=> 27, :gender=> "M")
jerry = Pilot.create(:name=> "Jerry", :country_of_origin=> "USA", :age=> 22, :gender=> "M")
rob = Pilot.create(:name=> "Rob", :country_of_origin=> "Canada", :age=> 25, :gender=> "M")
andrea = Pilot.create(:name=> "Andrea", :country_of_origin=> "Sweden", :age=> 30, :gender=> "F")
jessica = Pilot.create(:name=> "Jessica", :country_of_origin=> "Thailand", :age=> 27, :gender=> "F")
alyssa = Pilot.create(:name=> "Alyssa", :country_of_origin=> "Spain", :age=> 25, :gender=> "F")

falcon_X = Spacecraft.create(:name=> "Falcon X", :year_built=> 2017, :max_capacity=> 2)
falcon_Heavy_X = Spacecraft.create(:name=> "Falcon Heavy X", :year_built=> 2018 , :max_capacity=> 6)
discovery = Spacecraft.create(:name=> "Discovery", :year_built=> 2000, :max_capacity=> 8)
cosmos = Spacecraft.create(:name=> "Cosmos", :year_built=> 2015, :max_capacity=> 2)
horizon = Spacecraft.create(:name=> "Horizon", :year_built=> 2014, :max_capacity=> 3)
explorer = Spacecraft.create(:name=> "Explorer", :year_built=> 2019, :max_capacity=> 10)


apollo = Mission.create(:name=> "Apollo", :launch_date=> 2030, :total_distance=> 34000000, :destination=> "Mars", :pilot=>austin, :spacecraft=>falcon_X)
operation_X = Mission.create(:name=> "Operation X", :launch_date=> 2020, :total_distance=> 240000, :destination=> "Moon", :pilot=>julio, :spacecraft=>falcon_Heavy_X)
galex = Mission.create(:name=> "GALEX", :launch_date=> 2018, :total_distance=> 870000000, :destination=> "Titan", :pilot=>austin, :spacecraft=>discovery)
dawn = Mission.create(:name=> "Dawn", :launch_date=> 2025, :total_distance=> 40000000 , :destination=> "Comet 67B", :pilot=>andrea, :spacecraft=> cosmos)
deep_impact = Mission.create(:name=> "Deep Impact", :launch_date=> 2022, :total_distance=> 50000000, :destination=> "Pluto", :pilot=> jessica, :spacecraft=> horizon)
exploration = Mission.create(:name=> "Exploration", :launch_date=> 2028, :total_distance=> 50000000, :destination=> "Kuiper Belt", :pilot=> alyssa, :spacecraft=> explorer)

