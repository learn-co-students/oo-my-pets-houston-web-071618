require "pry"

class Owner

	attr_accessor :pets, :name, :mood
	attr_reader :species

	@@all = []

	def initialize(pets, species = "human")
		@pets = {fishes: [], cats: [], dogs: []}
		@species = species
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def self.count
		@@all.length
	end

	def self.reset_all
		@@all = []
	end

	def name
		@name
	end

	def say_species
		"I am a " + @species + "."
	end

	def buy_fish(name)
		new_fish = Fish.new(name)
		self.pets[:fishes] << new_fish
	end

	def buy_cat(name)
		new_cat = Cat.new(name)
		self.pets[:cats] << new_cat
	end

	def buy_dog(name)
		new_dog = Dog.new(name)
		self.pets[:dogs] << new_dog
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
		self.pets.each do |species, array|
			array.each do |species|
				species.mood = "nervous"
			end
		end
		self.pets = []
		end

	def list_pets
		fish_num = self.pets[:fishes].length
		cats_num = self.pets[:cats].length
		dogs_num = self.pets[:dogs].length

		"I have #{fish_num} fish, #{dogs_num} dog(s), and #{cats_num} cat(s)."
	end



end











