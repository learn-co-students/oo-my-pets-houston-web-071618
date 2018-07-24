require 'pry'

class Owner
  @@all = []

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(name)
  @name = name
  @pets = pets_initialize
  Owner.all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    Owner.all.clear
  end

  def self.count
    Owner.all.count
    # binding.pry
  end

  def species
      @species = "human"
  end

  def say_species
    "I am a human."
  end

  def pets_initialize
    pets = {:fishes => [],:dogs => [],:cats => []}
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each {|pets, pet|
      pet.each {|each_pet|
        # binding.pry
        each_pet.mood = "nervous"
      }
    }
    # binding.pry
    self.pets = pets_initialize
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  #
  # def pet_count(pet)
  #   pets[pet.to_sym].count
  # end

end
