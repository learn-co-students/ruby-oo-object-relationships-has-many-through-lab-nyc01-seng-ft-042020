class Artist

    @@all = []
    attr_reader :name

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name,genre)

        Song.new(name,self,genre)

    end

    def songs

        Song.all.select do |all_songs|
            all_songs.artist == self
        end
    end

    def genres

        Song.all.map do |all_songs|
            all_songs.genre 
        end
    end



end
