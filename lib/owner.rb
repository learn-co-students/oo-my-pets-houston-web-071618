require 'pry'

class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => [] }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    # binding.pry
    @pets[:dogs].map { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map { |cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map { |fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.keys.each do |species|
      @pets[species].each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets = []
  end

  def list_pets
    fish = @pets[:fishes].length
    dogs = @pets[:dogs].length
    cats = @pets[:cats].length
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end
