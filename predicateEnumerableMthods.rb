# The include? methos 
    # the include method works to ind where a particular element exists in an array 
    # will return true i fthe element exists in an aray or hash or false when it is not 

    numbers = [5,6,7,8]

    numbers.include?(6) #=> true 
    numbers.include?(3) #=> false 

# The any? method 
    # returns true or false if ANY element in an array or hash matches the condition wiithin 
    # the block 

    numbers = [21, 42, 303, 499, 550, 811]
    numbers.any?{ |number| number > 500 } #=> true

# The all? method 
    # it only returns true if ALL the elements in ana array or hash match the condition set 
    # in the block, otherwise returns false 
    # false will return true by default unless the block return false or nil : 
    # if you call all on an empty hash or array it will return true 

    fruits = ["apple", "banana", "strawberry", "pineapple"]
    fruits.all? { |fruit| fruit.length > 3 } #=> true 
    fruits.all? { |fruit| fruit.length > 6 } #=> false 

# The none? method 
    # returns true only if the condition in the block matches NONE of the elements in the array 
    # or hash, otherwise returns false 

    fruits = ["apple", "banana", "strawberry", "pineapple"]
    fruits.none? { |fruit| fruit.length > 10 } #=> true 
    fruits.none? { |fruit| fruit.length > 6 } #=> false 
