class CreateMissions < ActiveRecord::Migration
  def change 
    create_table :missions do |t|
      t.string :name
      t.integer :pilot_id
      t.integer :spacecraft_id
      t.datetime :launch_date
      t.integer :total_distance
      t.string :destination
    end
  end
end