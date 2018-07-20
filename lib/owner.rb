require_relative 'cat'
require_relative 'dog'
require_relative 'fish'

class Owner
  # code goes here
  attr_reader   :species
  attr_accessor :pets,:name

  @@all = []

  def initialize(pets)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []        # or @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
      pets[:cats].each do |cat|
        cat.mood = "nervous"
      end
      pets[:dogs].each do |dog|
        dog.mood = "nervous"
      end
      pets[:fishes].each do |fish|
        fish.mood = "nervous"
      end

      pets[:cats].clear
      pets[:dogs].clear
      pets[:fishes].clear
  end

  def list_pets
      p "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end


end
