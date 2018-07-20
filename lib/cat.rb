require_relative 'owner'

class Cat

  attr_reader   :name
  attr_accessor :mood

  # @@cats = []

  def initialize(name)
    @mood = "nervous"
    @name = name
    # cats << self    # Don't do that here.
  end

end
