class LocationController < ApplicationController

  def new
    @locations = Location.all
    @species = Species.all
    @new_location = Location.create({name: params[:name]})
    render('species/index.html.erb')
  end

  def view
    @location = Location.find_by(id: params[:id])
    render('location/view.html.erb')
  end
end
