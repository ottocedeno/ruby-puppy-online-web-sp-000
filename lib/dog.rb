require 'pry'

class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all
    @@all.each {|dog_object| puts dog_object.name}
  end

  def save

  end
end

binding.pry
