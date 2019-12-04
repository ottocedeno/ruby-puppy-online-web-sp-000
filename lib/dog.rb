require 'pry'

class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.clear_all
    @@all.clear
  end

  def self.all
    @@all
  end

  def self.print_all
    @@all.each {|dog_object| puts dog_object.name}
  end


end

Dog.new("indy")
Dog.new("cali")
Dog.new("sammy")
Dog.new("mac")
Dog.new("moe")

binding.pry
