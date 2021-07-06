class Artist    
    attr_accessor :name 
    @@all = [] 

    def initialize
        @name = name
        Artist.all << self 
    end 

    def self.all
        @@all 
    end 

    def songs
        # returns all songs associated with this Artist 

      Song.all.select do |song|
        song.artist == self 
      end
    end 

    def add_song(name, genre)
      Song.new(name, self, genre)
    end

    def genres
        # has many genres, through songs 
        # 'through songs' means use songs method
    
        self.songs.each do |song|
            song(name, self, genre)
        end 
    end

end 