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

# def is a buil-in keyword that tells Ruby that is the start of a method definiton 
# my_name is the name of the method, can be anything you want, 
# there is code inside the method body puts ... 
# end is a built-in keyword that tells Ruby 