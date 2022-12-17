require 'pry'
require_relative './concerns/memorable'
require_relative './concerns/findable'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  # def self.find_by_name(name)
    # @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end


# test = Song.new
# test.name = "this"
# test.artist = "trevor"
# Song.find_by_name("trevor")
# binding.pry
# 0