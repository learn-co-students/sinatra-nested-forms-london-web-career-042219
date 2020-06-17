class Pirate
    attr_accessor :name, :weight, :height

    @@all = []

    def initialize( pirate )
        @name = pirate[:name]
        @weight = pirate[:weight]
        @height = pirate[:height]
        @@all << self
    end

    def self.all
        @@all
    end
    
end