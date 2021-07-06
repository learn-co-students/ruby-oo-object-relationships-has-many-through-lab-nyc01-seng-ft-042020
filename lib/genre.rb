class Genre
    attr_accessor :name, :song 
    @@all = [] 

    def initialize
      @songs = [] 
      Genre.all << self 
    end 

    def self.all
      @@all
    end 
  end