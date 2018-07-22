require "pry"

class Owner
  attr_reader :species
  attr_accessor :pets, :name

  @@all = []

  def initialize(species)
    @name = nil
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each do |pet|
      pet.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |pet|
      pet.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |pet|
      pet.mood = "happy"
    end
  end

  def sell_pets
    self.pets.map do |pet_type, pet_array|
      pet_array.each {|pet| pet.mood = "nervous"}
      pet_array.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end
