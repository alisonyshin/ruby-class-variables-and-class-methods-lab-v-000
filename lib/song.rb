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
  end  
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists
  end
  
  def self.genre_count
      
  end
  
  def artist(artist)
    @@artists << artist unless @@artists include?(artist) 
    if @@artist_count.keys.include?(artist)
      @@artist_count[artist] =+ 1
    else
      @@artist_count[artist] = 1
  end
  
  def genre(genre)
    @@genres << genre unless @@genres include?(genre) 
    if @@genres_count.keys.include?(genre)
      @@genres_count[genre] =+ 1
    else
      @@genres_count[genre] = 1
  end
  

  
end