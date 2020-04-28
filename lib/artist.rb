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

    def songs
        Song.all.select { |song| song.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.collect {|song| song.genre}
    end


end

# describe "#new_song" do
#     it "given a name and genre, creates a new song associated with that artist" do
#       jay_z = Artist.new("Jay-Z")
#       rap = Genre.new("rap")
#       ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)

#       expect(jay_z.songs).to include(ninety_nine_problems)
#       expect(ninety_nine_problems.artist).to eq(jay_z)
#     end
#   end