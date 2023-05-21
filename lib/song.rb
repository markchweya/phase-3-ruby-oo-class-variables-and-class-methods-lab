lass Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name,artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

  end

  def self.count
    @@count
  end

  def self.artists_count
    @@artists
  end

  def self.genres_count
    @@genres
  end

  def self.genres
      @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count_obj = {}
    @@genres.each do |genre|
      genre_count_obj[genre] ||= 0
      genre_count_obj[genre] += 1
    end
    genre_count_obj
  end

  def self.artist_count
    artists_count_obj = {}
    @@artists.each do |artist|
      artists_count_obj[artist] ||= 0
      artists_count_obj[artist] += 1
    end
    artists_count_obj
  end
end

wonder = Song.new('I wonder', 'Kanye West', 'Hip Hop')
ninety_nine = Song.new('99 problems', 'Jay-Z', 'Rap')
amilli = Song.new('A milli', 'Lil Wayne', 'Rap')
puts Song.genre_count
