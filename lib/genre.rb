require_relative = 'artist'
require_relative = 'song'
class Genre
  @@all = []
  attr_accessor :name

  def initialize(name)
   @name = name
   Genre.all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|song| song.genre == self}
  end

  def artists
    Song.all.collect{|song| song.genre == self ? song.artist : nil}
  end
end
