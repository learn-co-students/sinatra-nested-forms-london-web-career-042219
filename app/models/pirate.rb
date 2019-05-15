class Pirate
#Pirates should have a name, weight, and height. 
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]

    @@all << self
  end

  def self.all
    @@all
  end


end