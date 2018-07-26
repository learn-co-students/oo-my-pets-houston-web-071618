class Cat

  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end


end

# Cat
#   can initialize a cat (FAILED - 1)
#   initializes with a name (FAILED - 2)
#   can't change its name (FAILED - 3)
#   initializes with a nervous mood (FAILED - 4)
#   can change its mood (FAILED - 5)
#
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
