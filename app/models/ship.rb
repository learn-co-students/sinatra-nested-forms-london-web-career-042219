class Ship

    attr_accessor :name, :type, :booty
    @@all = []

    def initialize( ship )
        @name = ship[:name]
        @type = ship[:type]
        @booty = ship[:booty]
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.clear
        @@all=[]

    end

end