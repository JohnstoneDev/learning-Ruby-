# A module is like a toolbox that contains a set of methods 
# and constants. Modules are mainly used to store things. 

module Circle

    PI = 3.141592653589793
    
    def Circle.area(radius)
      PI * radius**2
    end
    
    def Circle.circumference(radius)
      2 * PI * radius
    end
  end

# Module names are written in CapitalizedCamelCase. 
# Doesn't make sense to include variables in modules because they vary 
# Including constants in modules is helpful since they dont change 

# Constants in Ruby are written in CAPITAL_LETTERS with underscores separating them. 
# Ruby doesn't make you keep the same value for a constant once it is created 
# but will warn you if you try to change them. 

# namespacing 
# one of the main purpose s of modules is to seperate methods and constant into 
# named spaces, it is how Ruby doesn't confuse Math::PI and Circle::PI. 

# The double colon used is called the 'scope resolution operator', which tells 
# Ruby where to look for a specific bit of code. Math::PI looks in the Math module 
# and Circle::PI looks inside the Circle module. 

# Some modules like Math are already present in theh interpreter and others 
# need to be brought in, you do this using 'require'

require 'date'

puts Date.today

# You can also include a module, any class that includes a certain module can 
# use those module's methods. After inclusion, you no longer need to prepend 
# the module name, since everything has been pulled in : 

class Angle
    include Math 
    attr_accessor :radians
    
    def initialize(radians)
      @radians = radians
    end
    
    def cosine
      cos(@radians)
    end
  end
  
  acute = Angle.new(1)
  acute.cosine

end

# When a module is used to mix additional behavior and information info a class 
# its called a 'mixin'. Mixins allows for customizing a class without having 
# to rewrite code. 


module Action
    def jump
      @distance = rand(4) + 2
      puts "I jumped forward #{@distance} feet!"
    end
  end
  
  class Rabbit
    include Action
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end
  
  class Cricket
    include Action
    attr_reader :name
    def initialize(name)
      @name = name
    end
end
  
peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump

# Imitating Multiple Inheritance 

module MartialArts
    def swordsman 
      puts "I'm a swordsman'"
    end
end 
  
class Ninja
    include MartialArts
    def initialize(clan)
      @clan = clan
    end
end
  
class Samurai
    include MartialArts
    def initialize(shogun)
      @shogun = shogun
    end
end
  

# includes mixes a module's methods in at the instance level 
# the extend keyword mixes a module's method at the class level 
# meaning that a class itself can use the methods, as opposed 
# to only its instances. 

module ThePresent
    def now
      puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
    end
end
  
class TheHereAnd
    extend ThePresent
end
  
TheHereAnd.now