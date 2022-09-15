# Enumerables are a set of built-in methods in Ruby that are included 
# as part of both arrays and hashes. 
# Enumerables are designed to make implementing iteration patterns easier
# Think higher order functions in Javascript 

# Each 
    # calling each on an array will iterate through that array and yield 
    # each element to a code block, where a task can be perfomed 
    
    friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
    
    friends.each{ |friend| puts "Hello, " + friend }

    # within the block, the |friend| is known as the block variable.
    # This is the element from your array that the block is currently 
    # iterating over. 

    # for multi-line blocks, the best practise is to use the do...end syntax 
    # instead of {...}

    my_array = [1,2]

    my_array.each do |num|
        num *= 2
        puts "The new number is #{num}"
    end 

    # each also works for hashes, by default it will yield both the key and value 
    # individually or together as an array, to the vlock depending on how you define 
    # the block variable 
    # returns the original array it was called on.

    my_hash = { "one" => 1, "two" => 2 }
    another_hash = { one : 1, two : 2 , three : 3}

    my_hash.each { |key,value| puts "#{key} is #{value}"}
    my_hash.each{ |pair| puts "The pair is #{pair}" }





# The each_with_index method 
    # nearly the same as #each but provides additional functionality 
    # it yields two block variables instead of one as it iterates through an array 
    # The first variable's value is the element itself, while the second variable's
    # value is the index of that element within the array. This allows for more comples 
    # operations. 
    # returns the orginal array it was called on 

    fruits = ["apple", "banana", "strawberry", "pineapple"]

    fruits.each_with_index { |fruit, index| puts fruit if index.even? } #=> apple banana 

# The Map method  
    # also caled #collect, transforms each element from an array according to whatever block
    # you pass to it and returns the transformed elements in a new array. 

    friends =  ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

    friends.map { |friend| friend.upcase } #=> ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]

    salaries = [1200,1500,1100,1800]

    salaries.map { |sal| sal-700 } #=> [500, 800, 400, 1100]

# The select method 
    # also called the filter method, passes every item in an array to a block and return a new 
    # array with only the items that pass a set condition that evaluate to true

    friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

    friends.select { |friend| friend != 'Brian' } #=> ["Sharon", "Leo", "Leila", "Arun"]


# The reduce method 
    # Also called the inject method 
    # it reduces an array or hash down to a single object 
    # use reduce when you want to get an output of a single value . 

    my_numbers = [5,6,7,8]
    sum = 0 

    my_numbers.reduce { |sum,number| sum + number }

    votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

    votes.reduce(Hash.new(0)) do |result, vote|
    result[vote] += 1
    result
    end 

# Bang Methods 
    # use when you want to change the values of a hash or array 

    friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

    friends.map! { |friend| friend.upcase } #=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`
    friends #=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`









