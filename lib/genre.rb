# **The `Genre` model:**

# - The `Genre` class needs a class variable `@@all` that begins as an empty array.
# - The `Genre` class needs a class method `.all` that lists each genre in the class
#   variable.
# - A genre should be initialized with a name and be saved in the `@@all` array.
# - The `Genre` class needs an instance method, `#songs`, that iterates through all
#   songs and finds the songs that belong to that genre.
# - The `Genre` class needs an instance method, `#artists`, that iterates over the
#   genre's collection of songs and collects the artist that owns each song.

# ```ruby
# pop = Genre.new("pop")
# ```

class Genre
  attr_accessor :name #why is this needed? where does it say in the readme?
  @@all = []

  def initialize(name)
    @name = name
    Genre.all << self 
  end
  
  def songs
    Song.all do |song| # how is this giving us what the test is asking for?
      song.genre == self 
    end 
  end

  def self.all
    @@all 
  end 

  def artists 
    songs.map(&:artist) #this calls .artist on the mapped array of songs method?
  end 

end