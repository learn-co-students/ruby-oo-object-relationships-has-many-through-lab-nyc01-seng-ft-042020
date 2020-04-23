require 'pry'
class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Artist.all << self
    end

    def self.all
        @@all
    end

    def new_song(song_name, genre)
        Song.new(song_name, self, genre)
    end

    def songs
        Song.all.select do |song_instance|
            song_instance.artist == self
        end
    end

    def genres
        self.songs.map {|song_instance| song_instance.genre}
    end

end