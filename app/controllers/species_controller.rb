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

  def delete
    @locations = Location.all
    @species = Species.all
    @this_species = Species.find_by(id: params[:id])
    @this_species.destroy
    render('species/index.html.erb')
  end
end
