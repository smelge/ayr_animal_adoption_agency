require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('../models/animal.rb')
also_reload( '../models/*' )

get '/pets' do
  @pets = Animal.all()
  erb(:"animals/index")
end
