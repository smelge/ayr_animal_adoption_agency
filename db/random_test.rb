require_relative('animal_randomiser.rb')

p "How many pets? "
pets = gets.chomp.to_i

petloop = 1
while petloop <= pets
  name = PetName.all.sample
  species = PetSpecies.all.sample
  age = PetAge.all

  p "Name: #{name} the #{species}, age: #{age}"
  petloop += 1
end
