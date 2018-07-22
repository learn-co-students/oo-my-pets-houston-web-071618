class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = { fishes: [], cats: [], dogs: [] }
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end

  def say_species
    "I am a #{species}."
  end

  def self.reset_all
    @@all.clear
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes].push(fish)
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[:cats].push(cat)
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    pets[:dogs].push(dog)
  end

  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = 'happy' }
  end

  def play_with_cats
    pets[:cats].each { |cat| cat.mood = 'happy' }
  end

  def feed_fish
    pets[:fishes].each { |fish| fish.mood = 'happy' }
  end

  def sell_pets
    pets.each do |_, array|
      array.each do |pet|
        pet.mood = 'nervous'
      end
      array.clear
    end
  end

  def list_pets
    f = pets[:fishes].length
    d = pets[:dogs].length
    c = pets[:cats].length
    "I have #{f} fish, #{d} dog(s), and #{c} cat(s)."
  end
end
