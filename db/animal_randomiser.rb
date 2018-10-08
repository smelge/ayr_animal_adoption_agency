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

class PetPhoto
  def self.picture(pet)
    case pet
      when "Dog"
        dogs = [
          'dog1.jpeg',
          'dog2.jpeg',
          'dog3.jpeg',
          'dog4.jpeg',
          'dog5.jpeg',
          'dog6.jpeg',
          'dog7.jpeg',
          'dog8.jpeg',
          'dog9.jpeg',
          'dog10.jpeg',
          'dog11.jpeg',
          'dog12.jpeg',
          'dog13.jpeg'
        ]
        return dogs.sample
      when "Cat"
        cats = [
          'cat1.jpeg',
          'cat2.jpeg',
          'cat3.jpeg',
          'cat4.jpeg',
          'cat5.jpeg',
          'cat6.jpeg'
        ]
        return cats.sample
      when "Ferret"
        ferrets = [
          'ferret1.jpeg',
          'ferret2.jpeg'
        ]
        return ferrets.sample
      when "Rabbit"
        rabbits = [
          'rabbit1.jpeg',
          'rabbit2.jpeg',
          'rabbit3.jpeg'
        ]
        return rabbits.sample
      when "King Cobra"
        cobras = [
          'cobra1.jpeg',
          'cobra2.jpeg',
          'cobra3.jpeg',
          'cobra4.jpeg'
        ]
        return cobras.sample
      when "Velociraptor"
        raptor = [
          'raptor1.jpeg',
          'raptor2.jpeg'
        ]
        return raptor.sample
      when 'Iguana'
        iguanas = [
          'iguana1.jpeg',
          'iguana2.jpeg'
        ]
      else
        return
      end
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

class ForeNamer
  def self.all()
    return [
      "Aaron",
      "Carl",
      "Dave",
      "Edward",
      "Fredricka",
      "Gary",
      "Hela",
      "Iodine",
      "Jerry",
      "Karen",
      "Lemon",
      "Murray",
      "Norbert",
      "Oprah",
      "Percival",
      "Rhian",
      "Sharon",
      "Trevor",
      "Vivian",
      "William",
      "Paul",
      "Grif",
      "Debra",
      "Slim",
      "Ben",
      "Celery",
      "Drama",
      "Twiglet",
      "Terry",
      "George",
      "Manfred",
      "Claire",
      "Henry",
      "Bovril",
      "Sally",
      "Barry",
      "Jeff",
      "Louise",
      "Jacob",
      "Fred"
    ]
  end
end

class SurNamer
  def self.all
    return [
      "Man",
      "Shutters",
      "Curtain",
      "Sticks",
      "Bricklayer",
      "Skoda",
      "Feely",
      "Squiggles",
      "Flan",
      "Arm-bandage",
      "Shuttleworth",
      "Barny",
      "Ferguson",
      "Clarkson",
      "Soup",
      "Gronk",
      "Pteranodon",
      "Hippy",
      "Pain",
      "Laserexplosion",
      "Portaloo",
      "Tiles",
      "Cunk",
      "Schmarm",
      "Field",
      "Butter",
      "Cake",
      "Eggs",
      "Upset",
      "Woodmonger",
      "Klaarg",
      "Details",
      "Bjornsson"
    ]
  end
end
