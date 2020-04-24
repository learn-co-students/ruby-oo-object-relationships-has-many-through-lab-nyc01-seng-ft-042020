class Artist    
    attr_accessor :name 
    @@all = []

    def initialize
        @songs = []
        @@all << self
    end

    def self.all 
        @@all 
    end 

    def add_song(song)
        @songs << song 
    end

    def songs 
        @songs 
    end

end 