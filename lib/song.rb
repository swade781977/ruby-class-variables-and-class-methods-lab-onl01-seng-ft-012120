class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre + genre
    @@count += 1
    @@artists << artist
  end
  attr_reader :name, :artist, :genre
  def name=(name)
    @name = name
    
  end
  def artist(artist)
    @@artists[@@artists.index(@artist)] = artist
    @artist = artist
  end
  def genre(genre)
    @@genres[@@genres.index(@genre)] = genre
    @genre = genre
  end
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      
  end
  def self.artist_count
    artist_count ={}
    @@artists.each do |artist|
      artist_count[artist] = 1 ||= artist_count[genre] += 1 
    end
  end
  def self.count
    @@count
  end
end