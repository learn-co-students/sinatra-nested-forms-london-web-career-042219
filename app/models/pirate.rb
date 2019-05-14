# frozen_string_literal: true

class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end

  def self.all
    @@all
  end

  def self.parse_input(pirates)
    pirates.each do |_k, v|
      Pirate.new(
        v['name'],
        v['weight'],
        v['height']
      )
      v['ships'].each do |ship|
        Ship.new(
          ship['name'],
          ship['type'],
          ship['booty']
        )
      end
    end
  end
end
