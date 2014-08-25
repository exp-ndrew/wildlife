class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :species_id, :int
      t.column :location_id, :int
    end
  end
end
