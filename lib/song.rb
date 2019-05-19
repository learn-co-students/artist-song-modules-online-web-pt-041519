require 'pry'

class Song
  extend Findable, Memorable::ClassMethods
  include Paramable, Memorable::InstanceMethods
  attr_accessor :name, :artist

  @@songs = []

  def self.all
    @@songs
  end
end
