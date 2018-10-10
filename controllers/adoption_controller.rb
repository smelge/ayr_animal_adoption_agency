require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('../models/animal.rb')
require_relative('../models/customer.rb')
require_relative('../models/adopt.rb')
also_reload( '../models/*' )

get '/adopts' do
  erb(:"/adopts/index")
end
