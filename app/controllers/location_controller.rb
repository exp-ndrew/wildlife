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

  def delete
    @locations = Location.all
    @species = Species.all
    @location = Location.find_by(id: params[:id])
    @location.destroy
    render('species/index.html.erb')
  end

  def edit
    @species = Species.all
    @location = Location.find_by(id: params[:id])
    @location.name = params[:name]
    @location.save
    render('location/view.html.erb')
  end
end
