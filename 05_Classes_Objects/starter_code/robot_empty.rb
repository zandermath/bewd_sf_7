#CODE ALONG & LAB WORK 
require 'pry'
require 'pry-byebug'
 
#State & Object Factory: factory that creates and instiantes the robots
#Behavior: Collection of class methods, instance methods, instance variables, local variables, constants etc., 
 
class Robot

  #getter && setter methods for each attribute
  attr_accessor  :name, :type, :origin

  #instance variables are available through the class. @name is an instance variable 
  def initialize(name, type, origin)
    @name = name
    @type = type
    @origin = origin 
  end

  #instance method
  def fly
    add_wings_and_take_off
  end
 
  def laser_master
    if @type == "Super Android"
      add_laser_training
    else
      puts "I'm #{type}. I don't have laser skills. Those come with the newer robots"
    end
  end

  #overiding to_s method that comes out of the box
  def to_s
    "My name is #{name}. I'm #{type}. I was created in #{origin}"
  end

  #class methods call be called like this Robot.make_robots(5)
  def self.make_robots(num_of_robots)
    robots = num_of_robots.to_i
    robots.times do 
      Robot.random_robot_maker
    end
  end

  def self.random_robot_maker
    names = ["Kisha","Bryan", "Steve", "Donna", "Kelly" "Celeste", "Raissa", "Erik", "Mark", "Ramon"]
    types = ["Super Android", "Android"]
    origins =  ["Venus", "Mars"]

    name = names.sample
    type = types.sample
    origin = origins.sample

    r = Robot.new(name,type, origin)
    puts "Created robot #{name} of type #{type} from #{origin}"
    return r 
  end
 
private
 
#usually used within instance && class methods.
def add_wings_and_take_off
  puts "I'm awesome! I'm #{name}, an awesome #{type} with flying skills"
end

def add_laser_training
  puts "I'm SUPER awesome. I'm #{name}, an amazing #{type} with laser fighting skills"
end

 
end

Robot.make_robots(20)

# steve = Robot.new("Steve", "Super Android", "California")
# casey = Robot.new("Casey", "Android", "Florida")

# puts steve
# puts casey
# casey.fly

# steve.laser_master
# casey.laser_master
 
# happy_robot = Robot.random_robot_maker
# happy_robot.fly
# happy_robot.laser_master 