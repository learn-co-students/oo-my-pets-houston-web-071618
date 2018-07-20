require_relative 'owner'

class Dog

  attr_reader   :name
  attr_accessor  :mood

  # @@dogs = []

  def initialize(name)
    @mood = "nervous"
    @name = name
    # dogs << self        # Don't do that here.
  end

end
