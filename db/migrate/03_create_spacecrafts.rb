class CreateSpacecrafts < ActiveRecord::Migration
  def change 
    create_table :spacecrafts do |t|
      t.string :name
      t.integer :year_built
      t.integer :max_capacity
    end
  end
end