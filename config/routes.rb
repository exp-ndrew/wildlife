Rails.application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'}) #list
  match('species/new', {:via => :post, :to => 'species#new'}) #create
  match('species/view/:id', {:via => :get, :to => 'species#view'}) #read
  match('species/:id/delete', {:via => :delete, :to => 'species#delete'}) #destroy

  match('locations', {:via => :get, :to => 'species#index'}) #list
  match('locations/new', {:via => :post, :to => 'location#new'}) #create
  match('locations/view/:id', {:via => :get, :to => 'location#view'}) #read
  match('locations/:id/delete', {:via => :delete, :to => 'location#delete'}) #destroy
end
