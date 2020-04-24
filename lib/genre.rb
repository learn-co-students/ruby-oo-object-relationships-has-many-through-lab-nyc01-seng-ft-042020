class Genre

    attr_accessor :name
    @@all=[]

    def initialize(name)
        @name=name
        @@all << self
    end


    def self.all
        @@all
    end
    
    def songs

        Song.all.select do |all_songs|
            all_songs.genre == self
        end

    end

    def artists

        Song.all.map do |all_songs|
            all_songs.artist 
        end
    end



end
