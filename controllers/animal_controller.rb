require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('../models/animal.rb')
require_relative('../models/customer.rb')
require_relative('../models/adopt.rb')
also_reload( '../models/*' )

get '/pets' do
  @pets = Animal.all()
  erb(:"animals/index")
end

post '/animals/:id/delete' do
  target = Animal.find(params[:id].to_i)
  target.delete()
  redirect to("/pets")
end

post '/animals/:id/edit' do
  @animal = Animal.find(params[:id].to_i)
  erb(:"animals/edit")
end

post '/animals/:id/change' do
  change_pet = Animal.new(params)
  change_pet.update()
  redirect to ("/pets")
end

get '/animals/new' do
  erb(:"/animals/new")
end

post '/animals/add' do
  @new_pet = Animal.new(params)
  @new_pet.save()
  redirect to ("/pets")
end

get '/animals/:id/adopt' do
  @pet = Animal.find(params[:id].to_i)
  @owner = Customer.all
  erb(:"animals/adopt")
end

post '/animals/adopt' do
  @adopt = Adopt.new(params)
  @adopt.save()
  redirect to ("../adopts")
end
