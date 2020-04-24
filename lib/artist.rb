require_relative = 'song'
class Artist
  @@all =[]
  attr_accessor :name

  def initialize(name)
    @name = name
     Artist.all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def new_song(name, genre)
    name = Song.new(name, self, genre)
  end

  def genres
   Song.all.collect{|song| song.artist == self ? song.genre : nil}
  end


end
