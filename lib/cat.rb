require_relative '_pet'
require 'pry'

class Cat < Pet

@@all

  def initialize(name)
    super(name.upcase)
    @num_lives = 9
    @@all << "potato"
    super(name.upcase)
    binding.pry
  end

  def die
    @num_lives -= 1
    super
  end
end
