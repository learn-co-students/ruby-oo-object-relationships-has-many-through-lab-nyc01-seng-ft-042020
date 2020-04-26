class Genre

attr_accessor :name
@@all = []

def initialize(name)
    @name = name
    Genre.all << self
end

def songs
    Song.all.select { |song| song.genre == self }
end

def artists
    songs.map { |songs| songs.artist }
end

def self.all
    @@all
end

end