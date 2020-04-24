
class Song

    @@all = []
    attr_accessor :name, :artist, :genre
    
    def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    Song.all << self
    end

    def self.all
        @@all
    end

end

    

