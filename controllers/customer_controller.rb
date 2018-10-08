require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('../models/customer.rb')
also_reload( '../models/*' )

get '/register' do
  erb(:"customer/index")
end
