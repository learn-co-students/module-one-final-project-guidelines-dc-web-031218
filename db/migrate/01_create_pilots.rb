class CreatePilots < ActiveRecord::Migration
  def change 
    create_table :pilots do |t|
      t.string :name
      t.string :country_of_origin
      t.integer :age
      t.string :gender
    end
  end
end