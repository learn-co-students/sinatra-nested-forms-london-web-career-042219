require 'pry'
class Ship
  #he ship class should have##name, type, and booty# attributes, as well as a class method .all that returns all the ships and a class method .clear that deletes all ships.

  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]

    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear  #deletes all the instances in the array
  end          #this method also works for destroying all in AR
  ##binding.pry
end

#Ship.new("Dave", "Destroyer","Gold")