# Creating arrays 
num_array = [1,2,3,4,5]
str_array = ["This","is","the","way"]

# creating arrays using Array.new method : 
    # You can include two optional arguments : initial size and default value 

Array.new #=> []
Array.new(3,7) #=> [7,7,7,]
Array.new(3,true) #=> [true,true,true]
Array.new(3) #=> [nil,nil,nil]
Array.new(3,"Mando") #=> ["Mando","Mando","Mando"]

# Accesing elements 
    # Arrays use zero-based indexing 
    # Accessing a specific element within an array use array_name[index];
    # Calling an invalid position will result in nil 
    # you can use negative indices which return elements starting from the end of an 
    # array, starting at [-1]

str_array = ["This","is","the","way"]

str_array[0] #=> "This"
str_array[1] #=> "is"
str_array[2] #=> "the"
str_array[3] #=> "way"

str_array[-1] #=> "way"

# .first and .last methods 
    # Returns the element at that positon respectively 
    # Can take an integer argument : array.last(n), array.first(n) which will 
    # return a new array that contains the first or last n elements of an array respectively 

str_array = ["This","is","the","way"]
str_array.first #=> "This"
str_array.last #=> "way"

str_array.first(2) #=> ["This","is"]
str_array.last(2) #=> ["the","way"]

# Adding and removing elements 
    # To add an element to an existing array use the .push method or shovel operator(<<)
    # Both methods will add elements to the end of an array and return that array with new elements 

num_array = [1,2]

num_array.push(3,4) #=> [1,2,3,4]
num_array << 5 #=> [1,2,3,4,5]

    # To remove an element from an array use the .pop method 
    # it will remove the element at the end of the array and return the element that was removed 

num_array,pop #=> 5 
num_array #=> [1,2,3,4]


# The methods .shift and .unshift are used to add and remove elements at the beggining of an array 
    # the .unshift method adds elements to the beggining of an array and retuns that array.

    num_array = [2,3,4]
    num_array.unshift(1) #=> [1,2,3,4]

    # the .shift method removes the first element of an array and returns that element 

    num_array.shift  #=> 1 
    num_array #=> [2,3,4]

    # both .pop and .shift can take integer arguments 

    num_array = [1,2,3,4,5,6]

    num_array.pop(3) #=> [4,5,6]
    num_array.shift(2) #=> [1,2]

    num_array #=> [3];


# Adding and subtracting arrays 
    # Adding two arrays will return a new Array built by concatenating them, similar to string concatenation.
    # The concat method works the same way 

    a = [1,2,3,4]
    b = [4,5,6,7]

    a + b #=> [1,2,3,4,5,6,7]
    a.concat(b) #=> [1,2,3,4,5,6,7]
    
    # to find the difference between array you can subtract them using - 
    # This method returns a copy of the first array, removing elements that appear in the second array 

    [1,1,1,2,2,3,4] - [1,4] #=> [2,2,3]


# Basic Methods 
    # empty - checks whether the array is empty
    # length - returns an integer representin the number of items in the array 
    # reverse - reverses the items of the array
    # include - checks that the array contains what is passed in as an argument 
    # join - returns a string of array elements put together using the argument passed in 

    # empty
    [].empty?               #=> true
    [[]].empty?             #=> false
    [1, 2].empty?           #=> false

    # array.length
    [1, 2, 3].length        #=> 3

    # array.reverse 
    [1, 2, 3].reverse       #=> [3, 2, 1]

    # array.include?(arg)
    [1, 2, 3].include?(3)   #=> true
    [1, 2, 3].include?("3") #=> false
    
    # Array.join(arg) 
    [1, 2, 3].join          #=> "123"
    [1, 2, 3].join("-")     #=> "1-2-3"


