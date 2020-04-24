class Artist 
    attr_accessor :name
    @@all = []
    # .all method is holding all of the Artist instances 
    def initialize(name)
        @name = name 
        Artist.all << self
    end
    def self.all 
        @@all
    end 
    def new_song(name, genre)
        Song.new(name, self, genre)
        #creates a new song with self as the artist
    end
    def songs 
        Song.all.select {|song| song.artist == self}
        #iterates over every song instance to return 
        #a new array of songs with an artist the are THIS
        #artist instance 
    end
    def genres
        songs.map {|song| song.genre }
        #iterates of the above songs method to return a new 
        #array of each genre attatched to each song by this artist
    end 
end 
