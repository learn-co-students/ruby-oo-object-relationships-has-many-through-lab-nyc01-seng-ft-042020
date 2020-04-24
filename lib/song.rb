class Song
    attr_accessor :name, :artist, :genre
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, artist, genre)
        @name = name
        @@all << self
        @artist = artist
        @genre = genre
    end
  end