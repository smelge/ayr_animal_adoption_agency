require_relative('../models/adopt.rb')
require_relative('../models/animal.rb')
require_relative('../models/customer.rb')

# Create random pets for adoption
require_relative('./animal_randomiser.rb')

require("pry-byebug")

# Adopt.delete_all()
Animal.delete_all()
Customer.delete_all()

animal_loop = 1
customer_loop = 1

while animal_loop <= 25
  new_animal = Animal.new({
    'name'=> PetName.all.sample,
    'species'=> PetSpecies.all.sample,
    'age'=> PetAge.all,
    'arrival_date'=> PetArrival.all,
  })

  new_animal.save()
  animal_loop += 1
end

while customer_loop <= 10
  new_customer = Customer.new({
    'first_name'=> ForeNamer.all.sample,
    'last_name'=> SurNamer.all.sample
  })

  new_customer.save()
  customer_loop += 1
end
