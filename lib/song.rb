
class Song
  attr_accessor :name, :artist


  def initialize(name)
    @name = name
  end

  # def name=(name)
  #   @name = name
  # end


  def self.artist_name=(artist_name)
    Artist.new(self.name)
  end


  def self.new_by_filename(file)
      name = file.split(" - ")
      new_song = self.new(name[1])


      new_artist = Artist.find_or_create_by_name(name[0])


      new_song.artist = new_artist
      new_artist.add_song(new_song)
    # binding.pry
    # binding.pry
    new_song
  end




end
