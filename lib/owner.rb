require 'pry'
class Owner
  # code goes here
  @@owners = []

  attr_accessor :name, :pets
  attr_reader :species

  def self.count
    @@owners.size
  end

  def self.reset_all
    @@owners.clear
  end

  def self.all
    @@owners
  end

  def initialize(species)
    @species = species
    @@owners << self
    @pets ={fishes: [], cats: [], dogs: []}
  end

  def say_species
     "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
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
    self.pets.each do |species, animalnames|
      animalnames.each do |animals|
        animals.mood = "nervous"
      end
      animalnames.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
