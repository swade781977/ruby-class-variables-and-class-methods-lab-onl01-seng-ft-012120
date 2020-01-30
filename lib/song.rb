class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre << genre
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
    counter = 1
    @@genres.each do |genre|
      if genre_count.key?(genre)
        genre_count[genre] = counter + 1
        counter += 1
      else
        genre_count[genre] = 1 
      end
    end
  end
  def self.artist_count
    artist_count ={}
    counter = 1
    @@artists.each do |artist|
      if artist_count.key?(artist)
        artist_count[artist] = counter + 1
        counter += 1
      else
        artist_count[artist] = 1 
      end
    end
  end
  def self.count
    @@count
  end
end