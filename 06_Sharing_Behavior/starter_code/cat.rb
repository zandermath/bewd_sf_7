require 'pry'
require 'pry-byebug'

class Cat

  attr_accessor :name, :age, :collar_color #attributes 

  def initialize(name, age)
    @name = name
    @age = age
  end

  def meow
    puts "meow I am #{@name}"
  end

  def self.do_I_Have_whiskers
    puts "yes of course"
  end

end

rudy = Cat.new("Rudy", 3)

rudy.collar_color
# nil

rudy.collar_color = 'blue'

rudy.collar_color
# blue