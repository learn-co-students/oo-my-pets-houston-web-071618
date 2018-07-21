require 'pry'

require_relative 'dog'
require_relative 'cat'
require_relative 'fish'
require_relative 'owner'



pry.start

garfield = Cat.new("Garfield")
sadie = Cat.new("Sadie")
felix = Cat.new("Felix")

nemo = Fish.new["Nemo"]
bubbles = Fish.new["Bubbles"]

snoopy = Dog.new["Snoopy"]
fide = Dog.new["Fido"]

bob = Owner.new("Bob")
kim = Owner.new("Kim")
