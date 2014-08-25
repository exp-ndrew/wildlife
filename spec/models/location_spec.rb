require 'spec_helper'

describe Location do
  it { should validate_presence_of :name}
  # end
  it "has and belongs to many species" do
    new_location = Location.create({name: "Mt. Hood"})
    new_species = new_location.species.create({name: "tourist"})
    expect(new_location.species).to eq [new_species]
  end
end
