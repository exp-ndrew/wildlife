require 'spec_helper'

describe Species do
  it { should validate_presence_of :name }

  it "has and belongs to many locations" do
    new_species = Species.create({name: 'tourist'})
    new_location = new_species.locations.create({name: 'Mt. Hood'})
    expect(new_species.locations).to eq [new_location]
  end

end
