class SpeciesController < ApplicationController

  def index
    @species = Species.all
    @locations = Location.all
    render('species/index.html.erb')
  end

  def new
    @species = Species.all
    @new_species = Species.create({name: params[:name]})
    render('species/index.html.erb')
  end

  def view
    @species = Species.find_by(id: params[:id])
    render('species/view.html.erb')
  end
end
