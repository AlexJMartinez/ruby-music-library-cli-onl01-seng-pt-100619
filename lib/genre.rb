class Genre
  extend Findable
  attr_accessor :name, :songs
@@all = []

def initialize(name)
  @name = name
  @songs = []
end

def save
  @@all << self
end

def self.all
  @@all
end

def self.destroy_all
  @@all.clear
end

def self.create(genre)
  genre = self.new(genre)
  genre.save
  genre
end

end
