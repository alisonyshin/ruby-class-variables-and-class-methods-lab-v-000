require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_reader :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name= name
    @artist= artist
    @genre= genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end  
  
  def self.count
    @@count
  end
  
  def self.genre_count
    @@genre_count = {}
    @@genres.each do {|genre|
      if @@genre_count.keys.include?(genre)
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end}
  end
  
  def self.genres
    @@genres.uniq
  end
  
  pry
  
  def self.artists
    @@artists.uniq
  end

  
end