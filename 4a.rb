require('sinatra')
require('sinatra/contrib/all')

require_relative('./controllers/adoption_controller.rb')
require_relative('./controllers/animal_controller.rb')
require_relative('./controllers/customer_controller.rb')

get '/'  do
  erb(:index)
end
