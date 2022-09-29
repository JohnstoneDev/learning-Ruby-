# Writing a simple if statement 

if 1 < 2 
    puts "1 is less than 2"
end 

# The above code can be written in one line as : 

puts '1 < 2' if 1 < 2

# If else & elseif statements 

if mandalorian 
    puts 'This is the way'
else 
    puts "May the force be with you"
end 


if attack_by_land == true
    puts "release the goat"

elseif attack_by_sea == true 
    puts "release the Krakken"

else 
    puts "release Kevin the Octopus"
end 

# Comparison operators 

# (==) equals 
5 == 5 #=> evaluate true
5 == 6 #=> evaluates false

# (!==) not equals 

5 != 7 #=> true
5 != 5 #=> false 

# (>) greater than 

5 > 3 #=> true 
5 > 8 #=> false 

# (<) less than 

1 < 2 #=> true
1 < 0 #=> false 

# (>=) greater than or equal to 

7 >= 7 #=> true
7 >= 5 #=> true 

# (<=) less than or equal to 

5 <= 5 #=> true 
5 <= 7 #=> true 

# .eql? chacks both the value type and the value it holds 

5.eql?(5.0) #=> false : one is an integer one is a float 
5.eql(5) #=> true

# .equal? checks whether both values are the exact same in object memory 
# two variables pointing to the same number usually return true 

a = 5 
b = 5 

a.equal?(b) #=> true

# ^ this expresso nis true because of the way computers store integers in memory,
# different variables are holding the same number and point to the same object in memory

c = "hello"
d = "hello"

c.equal?(d) #=> false 

# ^ This happens because computers can’t store strings in the same efficient way they store numbers.
# Although the values of the variables are the same, 
# the computer has created two separate string objects in memory.

# (<=>) Spaceship operator return the following : 
# -1 if the value on the left is less than the value on the right 
# 0 if the value on the left is equal to the value on the right 
# 1 if the value on the left is greater than the value on the right 

5 <=> 10 #=> -1 
10 <=> 10 #=> 0 
10 <=> 5 #=> 



# all the above operators work on data types as well as numbers.


