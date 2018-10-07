require_relative('../models/adopt.rb')
require_relative('../models/animal.rb')
require_relative('../models/customer.rb')

# Create random pets for adoption
require_relative('./animal_randomiser.rb')

require("pry-byebug")

Animal.delete_all()
# Adopt.delete_all()
# Customer.delete_all()

animal_loop = 1
# customer_loop = 1

while animal_loop <= 5
  new_animal = Animal.new({
    'name'=> PetName.all.sample,
    'species'=> PetSpecies.all.sample,
    'age'=> PetAge.all,
    'arrival_date'=> PetArrival.all,
  })

  new_animal.save()
  animal_loop += 1
end
