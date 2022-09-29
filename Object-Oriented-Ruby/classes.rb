# Initiate a new class
class Programming
    # Initialize it with some properties
    def initialize(name,creator)
        @name = name 
        @creator = creator
    end

    # Attach a method to the class
    def description 
        puts "Hi, I'm #{@name} and I was created by #{@creator}"
    end 
end 

# Create new Instances of the class

ruby = Programming.new("Ruby","Ykjiro Matsumoto")
python = Programming.new("Python","Guido Von Rossum")

# Call the methods on the class
ruby.description
python.description


=begin scope
    $ - global variable 
    @ - instance variable (can only be accessed by the instance of a class )
    @@ - class variable (belong to the class itself)
    
=end

class Computer
    $manufacturer = "Mango Computer, Inc."
    @@files = {hello: "Hello, world!"}
    
    def initialize(username, password)
      @username = username
      @password = password
    end
    
    def current_user
      @username
    end
    
    def self.display_files
      @@files
    end
  end
  
  # Make a new Computer instance:
  hal = Computer.new("Dave", 12345)
  
  puts "Current user: #{hal.current_user}"
  # @username belongs to the hal instance.
  
  puts "Manufacturer: #{$manufacturer}" # => Include the '$' when you want to access it anywhere else
  # $manufacturer is global! We can get it directly.
  
  puts "Files: #{Computer.display_files}"
  # @@files belongs to the Computer class.


  class Albums 
    $type = "Music,digital sound media"
    @@listen = { listen_to: "Spotify" }

    def initialize(artist,popular_album)
        @artist = artist 
        @popular_album = popular_album
    end 

    def display_album
        @popular_album
    end 

    def self.listen  
        @@listen
    end 
end 

sza = Albums.new("SZA","Ctrl")

puts "The current Album is #{sza.display_album}"

puts "ctrl is a #{$type}"

puts "find it #{Albums.listen}"


# # Inheritance 


=begin

 In Ruby, inheritance works like this:

 class DerivedClass < BaseClass
 Some stuff!
 end

 The derived class is the new class you’re making 
 and the base class is the class from which that new class inherits.
  You can read “<“ as “inherits from.”

=end


class Song < Album #=> The song class inherits properties from the Album class.
    def display_album #=> override inherited behaviour
        @artist 
    end 
end 

# You can directly access the attribures or methods of a superclass 
# with ruby's built in super keyword 
# When you call super from inside a method, 
# that tells Ruby to look in the superclass of the current class and
#  find a method with the same name as the one from which super is called. 
# If it finds it, Ruby will use the superclass’ version of the method.

class Mixtape < Album 
    def display_album 
        super 
    end 
end 

# Another Example : 

class Message 
    @@messages_sent = 0 

      def initialize(from,to)
        @from = from 
        @to = to 
        @@messages_sent += 1
        end 
  end 
  
  my_message = Message.new("Celline","Me")
  
  class Email < Message 
    def initialize(from,to)
      super
    end 
  end 