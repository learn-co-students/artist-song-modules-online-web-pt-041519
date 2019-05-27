require 'pry'

class Artist # have many songs and an individual
  #instance of the Song class belongs to an artist
  attr_accessor :name #read & write the instance variable
  attr_reader :songs  #read the instance variable-array
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  @@artists = [] #stores

  def initialize
    super
      @songs = []
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
