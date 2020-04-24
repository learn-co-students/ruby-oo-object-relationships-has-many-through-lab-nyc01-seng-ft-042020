class Genre
    attr_accessor :name 

    @@all = []

    def initialize
        @songs = [] 
        @@all << self 
    end         

    def self.all 
        @@all 
    end 

end 