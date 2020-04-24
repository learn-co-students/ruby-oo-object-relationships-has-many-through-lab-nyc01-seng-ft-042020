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
    
    def new_song(name, genre)
        Song.new(name, self, genre)
        # # @songs << song
        # Song.artist = self
    end
    
    def songs
        Song.all.select do |song|
        #   puts "#{s.artist.name} is this"
        #   puts "#{self.name} is self.name"
        #   if s.artist.name == self.name && s.name != nil
        #   p s.name
        #   end
        song.artist == self
        end
    end
    
    def genres
        songs.collect do |s|
            s.genre
        end.uniq
    end
    
    end