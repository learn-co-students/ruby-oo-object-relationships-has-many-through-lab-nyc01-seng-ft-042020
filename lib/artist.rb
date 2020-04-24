class Artist
    attr_accessor :song, :genre, :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def new_song(name, artist, genre)
        Song.new(name, self, genre)
        @songs << song
        # Song.artist = self
    end
    
    def songs
        Song.all.map do |s|
        #   puts "#{s.artist.name} is this"
        #   puts "#{self.name} is self.name"
          if s.artist.name == self.name && s.name != nil
          p s.name
          end
        end
    end
    
    def genres
        Song.all.select do |genre|
            genre.artist == self
        end
    end
    
    end