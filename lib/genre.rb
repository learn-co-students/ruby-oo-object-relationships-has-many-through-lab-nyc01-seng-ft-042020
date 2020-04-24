class Genre
attr_accessor :name, :artist; :song
    @@all = []

def self.all
    @@all
end

def initialize(name)
    @name = name
    @@all << self
    @artist = artist
    @song = song
end

def songs 
    Song.all.select do |song|
        song.genre == self
    end
end

def artists
    songs.collect do |song|
        song.artist
    end
end
end