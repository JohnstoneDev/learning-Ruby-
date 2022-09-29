# Methods allow for the naming of sections of code and then running that 
# code anywhere i your program as many times as you need just by calling that name 

# Methoda are called by adding .method_name after an instance of the object that contains 
# that method 

"anything".reverse

# There are some built-in methods that Ruby makes globally accessible such as print and puts 
# They are called with just their names and any arguments. 

puts "anything"
print "This is the way."

# Calling this methods with parantheses is optional. 


# Creating a method 

def my_name 
    puts "Din Djarin"
end 

my_name

# def is a buil-in keyword that tells Ruby that is the start of a method definiton 
# my_name is the name of the method, can be anything you want, 
# there is code inside the method body puts ... 
# end is a built-in keyword that tells Ruby that is the end of a method definition 
# to call the method you simply need to use its name. 


# Parameters and Arguments 
    # If you want to return something other than a fixed result you need to give your 
    # method parameters. Parameters are variables that your method will receive when 
    # its called. Parameters make methods ore versatile. 

    def greet(name)
        "Hello, " + name + "!"
    end 

    puts greet("Mando") #=> Hello, Mando!


# Default Parameters 
    # Default parameters are used when you don't want to always provide arguments for 
    # ech paraneter that your method accepts 

    def greet_with_default_params(name ="stranger")
        "Hello, " + name + "!"
    end 

    puts greet #=> Hello stranger!
    puts greet("Grogu") #=> Hello Grogu!


# What methods return 
    # Ruby offers implicit return for methods, which means that a Ruby method will return 
    # the last expression that was evaluated, even without the return keyword 

    def my_name 
        return "Din Djarin"
    end 

    puts my_name #=> "Din Djarin"

    # ^ is the same same as : 

    def my_name 
        "Din Djarin"
    end 

    # implicit return example

    def even_odd(number)
        if number % 2 == 0 
            "Thats an even number"
        else 
            "That is an odd numnber"
        end 
    end 

    even_odd(16) #=> THat is an even number 
    even_odd(17) #=> That is an odd number

    # ^ here the method's return is depemdant on the result of the if condition. 
    
    # Explicit returns(using the keyword return) have a place and  are still useful in Ruby 
    # using the return keyword tells Ruby what should be the last statement to be evaluated. 

    def my_name 
        return "Din Djarin"
        "Bo Katan Kryze"
    end 

    my_name #=> "Din Djarin"

    # Explicit returns can be used to write a methid that checks input errors before continuing 

    def even_odd(number)
        unless number.is_a? Numeric
          return "A number was not entered."
        end
      
        if number % 2 == 0
          "That is an even number."
        else
          "That is an odd number."
        end
      end
      
      puts even_odd(20) #=>  That is an even number.
      puts even_odd("Ruby") #=>  A number was not entered.


    # Difference between puts and return 
        # puts is a method that prints whatever argument you pass it to the console
        # return is the final output of a method that you can use in other places throghout the code 


# Chaining methods 
    # Combining methods together in a line so that they evaluate one after the other 
    # each metho dcall builds off of the outcome of the previous methods in the chain.

    phrase = ["be", "to", "not", "or", "be", "to"]

    puts phrase.reverse.join(" ").capitalize #=> "To be or not to be"


# Predicate Methods 
    # methods in ruby that return a Boolean.
    # Often have a question mark at the end of their name. 
    # examples : even? odd? or between? 
    # you can create a method with a ? at the end of its name to indicate that it returns a Boolean 


# Bang Methods 
    # methods denoted with a ! mark at the end of the method name 
    # bang methods perfom an action and simultaneously overwrite the value of the original object with 
    # their result 

    whisper = "GENERAL KENOBI!"

    puts whisper.downcase! #=> "general kenobi!"
    puts whisper #=> "general kenobi!"

    # ^ that is the same as writing : 

    whisper = whisper.downcase; 



