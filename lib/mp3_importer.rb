require 'pry'
# require '../db/mp3s/search/**/*.mp3'


class MP3Importer
  attr_reader :path
  attr_accessor :songs

  def initialize(path)
    @path = path
  end


  def files
    # Dir.open["../db/mp3s/search/**/*.mp3"]
    files = Dir.open @path
    output = []
    entries = files.entries # [ ".", "..", "file_one.txt", "another_directory"]
    # p entries.glob(*".mp3")
    output << entries
    entries[2..-1]
  end

  def import
    files.each do |file|
      song = Song.new_by_filename(file)
      # artist1 = Artist.find_or_create_by_name(song.name)
      # added = artist1.add_song(song)
      # binding.pry
    end
  end

end
