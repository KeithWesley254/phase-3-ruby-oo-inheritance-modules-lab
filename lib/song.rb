require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  @@songs = []

  def initialize
    super
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
