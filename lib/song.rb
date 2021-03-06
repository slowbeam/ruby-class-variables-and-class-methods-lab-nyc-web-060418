require 'pry'
class Song

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre]
        genre_hash[genre] += 1
      else genre_hash[genre] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] += 1
      else artist_hash[artist] = 1
      end
    end
    artist_hash
  end

lucifer = Song.new("Lucifer", "Jay-Z", "rap")
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")

p Song.genre_count


end

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
#
# p ninety_nine_problems.name
#   # => "99 Problems"
#
# p ninety_nine_problems.artist
#   # => "Jay-Z"
#
# p ninety_nine_problems.genre
  # => "rap"
