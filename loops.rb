# The loop loop : 
    # An infinite loop that will contiue going unless you request it to stop 
    # using the break command 
    # break is used with a condition 

i = 0 
loop do 
    puts "i is #{i}"
     i += 1 
     break if i == 10 
end 


# The while loop : 
    # similar to the loop loop 
    # Declare the condition that will break the loop upfront 

i = 0 
while i < 10 do 
    puts "i is #{i}"
    i =+ 1 
end 

    # YOu can use while loops repeatedly to ask questions of the user until they give 
    # the desired response 

    while gets.chomp != "yes" do 
        puts "Are you a jedi"
    end 


# the Until loop 
    # the until loop continues for as long as the condition is false 

i = 0 
until i >= 10 do 
    puts "i is #{i}"
    i += 1 
end 

    #  getting a desired response using the until loop : 

    until gets.chomp == "yes" do 
        puts "Are you mandalorian?"
    end 

# Ranges 
    # Ruby lets us use a range to define an interval
    # All you have to do is give a starting value, the ending value and whether you want the 
    # range to be inclusive or exclusive 

(1..5) #=> inclusive range : 1,2,3,4,5
(1...5) #=> exclusive range : 1,2,3,4

# You can make ranges of letters too : 
("a".."d") #=> a,b,c,d


# For loops 
    # Used to iterate through a collection of information such as an array or range 
    #  useful if you need to do something a given number of times while also using an 
    # iterator 

for i in 0..5
    puts "#{i} Zombie apocalypse"
end 


# Times loop 
    # If you need to run a loop for a specified number of times 
    # It works by iterating through a loop a number of times and accessing the number its 
    # currently iterating through 

5.times do 
    puts "Hello,there"
end 

5.times do |number|
    puts "Hello there #{number}"
end 

# Upto and Downto loops 
    # You can use these methods to iterate from a starting number either up to or down to 
    # another number 

5.upto(10){ |num| print "#{num} "}

10.downto(5){ |num| print "#{num} "}




