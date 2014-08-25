class CreateLocationsSpecies < ActiveRecord::Migration
  def change
    create_table :locations_species do |t|
      t.column :location_id, :int
      t.column :species_id, :int
    end
  end
end
