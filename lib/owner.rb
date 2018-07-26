require 'pry'
class Owner

  @@all = []

  attr_reader :species
  attr_accessor :name, :pets

  def initialize (species)
    @name = name
    @pets = {:cats => [], :dogs => [], :fishes => [] }
    @species = species
    @@all << self
    # binding.pry
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    @pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    @pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    @pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
    # binding.pry
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |owned_species, owned_pets|
        self.pets[owned_species].each do |animals|
          # binding.pry
          animals.mood = "nervous"
        end
      end
      self.pets.clear
  end

  def list_pets
    pet_hash = {}
    self.pets.each do |species, info|
      pet_hash[species] = info.count
    end
      "I have #{pet_hash[:fishes]} fish, #{pet_hash[:dogs]} dog(s), and #{pet_hash[:cats]} cat(s)."
      # "I have 2 fish, 3 dog(s), and 1 cat(s)."
      # binding.pry
  end


  def self.all
        @@all
  end


  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end
end
# Owner
#   Class methods
#     keeps track of the owners that have been created (FAILED - 16)
#     can count how many owners have been created (FAILED - 17)
#     can reset the owners that have been created (FAILED - 18)
#     can initialize an owner (FAILED - 19)
#   instance methods
#     #species
#       initializes with a species (FAILED - 20)
#       can't change its species (FAILED - 21)
#     #say_species
#       can say its species (FAILED - 22)
#     #name
#       can have a name (FAILED - 23)
#     #pets
#       is initialized with a pets attribute as a hash with 3 keys (FAILED - 24)
#     #buy_fish
#       can buy a fish that is an instance of the Fish class (FAILED - 25)
#       knows about its fishes (FAILED - 26)
#     #buy_cat
#       can buy a cat that is an instance of the Cat class (FAILED - 27)
#       knows about its cats (FAILED - 28)
#     #buy_dog
#       can buy a dog that is an instance of the Dog class (FAILED - 29)
#       knows about its dogs (FAILED - 30)
#     #walk_dogs
#       walks the dogs which makes the dogs' moods happy (FAILED - 31)
#     #play_with_cats
#       plays with the cats which makes the cats moods happy (FAILED - 32)
#     #feed_fish
#       feeds the fishes which makes the fishes' moods happy (FAILED - 33)
#     #sell_pets
#       can sell all its pets, which make them nervous (FAILED - 34)
#     #list_pets
#       # can list off its pets (FAILED - 35)
