require_relative 'owner'

class Fish

  attr_reader   :name
  attr_accessor  :mood

  # @@dogs = []

  def initialize(name)
    @mood = "nervous"
    @name = name
    # fishes << self  # Don't do that here.
  end

end
