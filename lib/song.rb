# **The `Song` model:**

# - The `Song` class needs a class variable `@@all` that begins as an empty array.
# - The `Song` class needs a class method `.all` that lists each song in the class
#   variable.
# - A song should be initialized with a name, an artist, and a genre, and be saved
#   in the `@@all` array.

# ```ruby
# madonna = Artist.new("Madonna")
# pop = Genre.new("pop")

# into_the_groove = Song.new("Into the Groove", madonna, pop)
# ```

class Song
  attr_reader :artist, :genre 
  attr_accessor :name # why ?
  @@all = []

  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    Song.all << self 
  end 

  def self.all
    @@all
  end 


end 