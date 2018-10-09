require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('../models/customer.rb')
also_reload( '../models/*' )

get '/people' do
  @peoples = Customer.all()
  erb(:"customers/index")
end

get '/register' do
  erb(:"customers/new")
end

post '/customers/new' do
  newguy = Customer.new(params)
  newguy.save()
  redirect to("/people")
end

get '/customers/:id/edit' do
  erb(:"customers/edit")
end
