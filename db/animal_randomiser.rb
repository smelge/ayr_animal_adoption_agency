class PetName
  def self.all
    return [
      "Charlie",
      "Becks",
      "Max",
      "Buddy",
      "Cooper",
      "Jack",
      "Toby",
      "Henry",
      "Bear",
      "Scout",
      "Tucker",
      "Marley",
      "Monty",
      "Leo",
      "Finn",
      "Dexter",
      "Barney",
      "Alfie",
      "Angus",
      "Milo",
      "Oscar",
      "Shadow",
      "Sam",
      "Gus",
      "Murphy",
      "Harry",
      "Hunter",
      "Teddy",
      "Jasper",
      "Brodie",
      "Rufus",
      "Jake",
      "Winston",
      "Loki",
      "Kona",
      "Bruce",
      "Zeus",
      "Ben",
      "Ollie",
      "Bruno"
    ]
  end
end

class PetSpecies
  def self.all
    return [
      "Dog",
      "Dog",
      "Dog",
      "Dog",
      "Dog",
      "Dog",
      "Dog",
      "Dog",
      "Dog",
      "Dog",
      "Dog",
      "Dog",
      "Dog",
      "Dog",
      "Cat",
      "Cat",
      "Cat",
      "Cat",
      "Cat",
      "Cat",
      "Cat",
      "Cat",
      "Cat",
      "Cat",
      "Ferret",
      "Ferret",
      "Rabbit",
      "Rabbit",
      "Iguana",
      "King Cobra",
      "Velociraptor"
    ]
  end
end

class PetAge
  def self.all()
    return rand(1..16)
  end
end

class PetArrival
  def self.all()
    day = rand(1..30)
    month = rand(01..12)
    return "2018-#{month}-#{day}"
  end
end
