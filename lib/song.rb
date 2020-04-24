class Song
    attr_accessor :name, :artist, :genre
    @@all = []
    # .all method is holding all of the Song instances
    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        Song.all << self
    end
    def self.all 
        @@all
    end
end 