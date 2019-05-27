require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable

  include Memorable::InstanceMethods
  include Paramable


  attr_accessor :name
  attr_reader :artist

  @@songs = []

=begin
  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end
=end

  def self.all
    @@songs
  end
=begin
  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
=end

  def artist=(artist)
    @artist = artist
  end

=begin
  def to_param
    name.downcase.gsub(' ', '-')
  end
=end

end
