
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find{|artist| artist.name == name}

    if artist
      return artist
    else
      new_artist = self.new(name)
      new_artist.save
      return new_artist

    end
  end

  def print_songs
    @songs.map{|song| puts song.name}
  end
  # p @@all
end
