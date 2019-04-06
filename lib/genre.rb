require 'pry'
class Genre

@@all = []
attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all.select { |song| song.genre == self}
end

def artists
  Song.all.select { |artist| song.artist == artist}
end




end
