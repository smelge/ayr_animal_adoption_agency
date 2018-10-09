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

post '/customers/:id/change' do
  change_guy = Customer.new(params)
  change_guy.update()
  redirect to("/people")
end

get '/customers/:id/edit' do
  @customer = Customer.find(params[:id].to_i)
  erb(:"customers/edit")
end

post '/customers/:id/delete' do
  target = Customer.find(params[:id].to_i)
  target.delete()
  redirect to("/people")
end
