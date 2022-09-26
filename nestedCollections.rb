# Nested Arrays 
    # nested arrays can be used to store similar or positional data 
    test_scores = [
        [97, 76, 79, 93],
        [79, 84, 76, 79],
        [88, 67, 64, 76],
        [94, 55, 67, 81]
      ]
      
      teacher_mailboxes = [
        ["Adams", "Baker", "Clark", "Davis"],
        ["Jones", "Lewis", "Lopez", "Moore"],
        ["Perez", "Scott", "Smith", "Young"]
      ]

    # Accessing Elements 
    # Accessing a specific element within a nested array cn be done by calling 
    # array[x][y], x is the index of the nested element and y is the index inside 
    # the nested element. 
    # you can also use negative indices to return elements from the end of an array 

    teacher_mailboxes[0][0] #=> "Adams"
    teacher_mailboxes[1][0] #=> "Jones"
    teacher_mailboxes[0][-1] #=> "Davis"
    teacher_mailboxes[-1][0] #=> "Perez"

    # If you try to access an indez of a nonexistent nested element, it will raise an 
    # NoMethodError, because the nil class does not have a [] method. 
    # if youu try to access a nonexistent index inside an exiting nested element you get nil 

    teacher_mailboxes[3][0]  #=> NoMethodError
    teacher_mailboxes[0][4]  #=> nil

    # If you want a nil valuue returned when trying to access an index of a nonexistent nested 
    # element, you can use the #dig method. 
    # #dig can also be used when accessing a nonexistent index inside of an existing nested element 
    
    teacher_mailboxes.dig(3, 0) #=> nil
    teacher_mailboxes.dig(0, 4) #=> nil
    
    # Creating a nested array 
    # create an array of mutable objects(strings,array,hash...) you need to pass the default value of 
    # Array.new via a block, using curly braces instead of the second optional argument 
    # The code in the block gets evaluated for every slot in the array, creating multiple objects to 
    # initialize the array with, rather than references to the same object.

    mutable = Array.new(3, Array.new(2)) #=> [[nil, nil], [nil, nil], [nil, nil]]
    mutable[0][0] = 1000 #=> 1000
    mutable #=> [[1000, nil], [1000, nil], [1000, nil]]

    # ^ changing the value of the first element of the first nested array causes the 
    # first element to change in all three nested arrays, the same behaviur will happen 
    # with strings, hashes or any other mutable objects. 

    immutable = Array.new(3){ Array.new(2) } #=> [[nil,nil],[nil,nil],[nil,nil]]
    immutable[0][0] = 1000 
    immutable #=> [[1000, nil], [nil, nil], [nil, nil]]

    # ^ Changing the value of the first element in the first nested array does not cause the 
    # value to change in any other nested array. 

    # Adding and removing nested Elements 
    # You can add another element to the end o fthe nested array using the #push method or (<<) operator 
    # If you want to add an element to a specific nested array, you will need to specify the index of the 
    # nested array. 

    test_scores = [
        [97, 76, 79, 93],
        [79, 84, 76, 79],
        [88, 67, 64, 76],
        [94, 55, 67, 81]
      ]

      test_scores << [100,99,98,97] #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
      test_scores[0].push(100) # => [97, 76, 79, 93, 100] 

    # removing elements using pop 
    test_scores.pop #=> [100, 99, 98, 97]
    test_scores[0].pop #=> 100

    # Iterating over nested arrays 
      teacher_mailboxes.each_with_index do |element, element_index | 
        puts "Element #{element_index} =  #{element}"
      end 

    # expected out put : 
    #   Element 0 =  ["Adams", "Baker", "Clark", "Davis"]
    #   Element 1 =  ["Jones", "Lewis", "Lopez", "Moore"]
    #   Element 2 =  ["Perez", "Scott", "Smith", "Young"]

    # To iterate over the idividual elements inside each nested array you need to nest 
    # another enumerable method inside. 

    teacher_mailboxes.each_with_index do |element, element_index| 
        element.each_with_index do |inner_element, inner_index | 
            puts "Element #{element_index}, at index #{inner_index} is #{inner_element} "
        end 
    end 

    # Note : if we need only the teacher's name we can use #flatten before iterating 

    teacher_mailboxes.flatten.each do |teacher| 
        puts "#{teacher} is amazing!"
    end 

    # flatten gives us the nam of each teacher in the nested arrays into one array


