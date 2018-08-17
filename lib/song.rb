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
    
    if @@genres_count.keys.include?(genre)
      @@genres_count[genre] =+ 1
    else
      @@genres_count[genre] = 1
    end

    @@artists << artist unless @@artists.include?(artist) 
    if @@artist_count.keys.include?(artist)
      @@artist_count[artist] =+ 1
    else
      @@artist_count[artist] = 1
    end
    
  end  
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genres_count
  end
  
  def self.genres
    @@genres.uniq
  end
  

  
end