require 'pry'

class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def self.print_all
    @@all.each {|dog_object| puts dog_object.name}
  end

  private
  def save
    @@all << self
  end
end

Dog.new("indy")
binding.pry
