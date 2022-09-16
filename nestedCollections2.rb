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

# Check whether within each nested array there is an array with each score higher than 80 

test_scores.any? do |scores| 
    scores.all? { |score| score > 80 }
end   #=> expected false because no array has all elements over 80 

# Check whether witin each nested array there is an array wth any value over 80 

test_scores.all? do |scores| 
    scores.any? { |score| score > 80 }
end #=> expected to be true because there are scores within each array > 80 


# Nested Hashes : hash within hash 

vehicles = {
    alice: {year: 2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
  }

# Accessing Data 
# Accessing a specific element in a nested hash is very similar to a nested array. 
# you call hash[:x][:y] where :x is the key of the hash and :y is the key of the nested hash 
# if you try yo access a key in a nonexistent nested hash it will raise a NoMethodError 
# you should use the #dig method, if you try to access a nonexistent key it will return nil  

vehicles[:alice][:year] #=> 2019
vehicles[:blake][:make] #=> "Volkswagen"
vehicles[:caleb][:model] #=> "Accord"

# Adding and Removing Data 
# You can add more nested hashes, just like a regular hash 

vehicles[:dave] = { year : 2021, make : "Ford", model : "Escape"}

# You can also add an element to one of the nested hashes : 
# you should specify the key of the nested hash right before naming the key. 

vehicles[:dave][:color] = "red"
vehicles[:dave] #=> { :year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}

# Deleting one of the nested hashes is just like a regular hash. 
vehicles.delete(:blake)

# to delete one of the key / value pairs inside of a nested hash, you first specify the key of the hash
vehuicles[:dave].delete(:color);

