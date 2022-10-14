# Hashes : like objects in Javascript 
    # Creating Hashes using the hash literal {},
    # Keys and values are associated using the hash Rocket "=>"
    my_hash = { 
        "Mando" => "Din Djarin",
        "Mandalore" => 94,
        "Sith Lords" => ["Vader","Sheev Palpatine","Maul","Narccissus"],
        "Empty hash within hash" => {}
    }

    # Create hash using the .new method  
    my_hash = Hash.new #=> {}


# Accessing values 
    # You can access values in a hash,following the same patterns as an array 
    # When you call a hash's value by key, the key goes inside a pair of brackets 

    shoes = {
        "summer" => "sandals",
        "winter" => "boots"
    }

    shoes["summer"]; #=> "sandals"

    # if you try to access a key that does not exist the hash will return nil 

    shoes["hiking"] #=> nil 

    # Hashes have a .fetch method that will raise an error when you try to access a key that 
    # is not in your hash 

    shoes.fetch("hiking")  #=> KeyError: key not found: "hiking" 

    # the .fetch method can return a default value instead of raising an error if the given key is not found 

    shoes.fetch("hiking","hiking boots") #=> "hiking boots"


# Adding and Changing Data 
    # You can add/ update a key-value pair to a hash by calling the key and setting the value 
    shoes["fall"] = "sneakers"

# Removing Data 
    # Deleting data from a hash is done using the hash's .delete method
    # the method returns the value of the key-value pair that was deleted 
    # from the hash

    shoes.delete("summer") #=> "flip-flops"
    shoes #=> {"winter" => "boots", "falll" => "sneakers"}


# Methods 
    # useful methods that are specific to hashes are the .keys and the .values methods
    # they return the keys and values of a hash, respectively. 
    # Both these methods return arrays 

    books = { 
        "Beyond Good and Evil" => "Friedrich Nietzsche",
        "In Search of Lost Time" => "Marcel Proust"
    }

    books.keys #=> ["Beyond Good and Evil","In Search of Lost Time"];
    books.values #=> ["Friedrich Nietszche", "Marcel Proust"]


# Merging two hashes
    # You can merge two hashes using .merge method
    # the values of the hash getting merged override the values of the hash 
    # requesting to merge when they both have a key that's the same.

    hash1 = { "a" => 100, "b" => 200 }
    hash2 = { "b" => 254, "c" => 300 }

    hash1.merge(hash2) #=> { "a" => 100, "b" => 254, "c" => 300 }


# Symbols as Hash Keys 
    # Symbols are almost exclusively used as keys, they are far more perfomant than strings in Ruby 
    # they also allow for more cleaner syntax when defining hashes. 

    # Rocket Syntax : 
        american_cars = { 
            :chevrolet => "Corvette",
            :ford => "Mustang",
            :dodge => "Ram"
        }

    # Symbol Syntax 
        japanese_cars = {
            honda: 'Accord',
            toyota: 'Corolla',
            nissan: 'Altima'
        }

    # Accessing object keys using symbols 

    american_cars[:chevrolet];
    japanese_cars[:honda]
;


# Manipulating a hash using symbols and some hash methods

movies = { memento: 8 }

puts "Query?"
choice = gets.chomp.downcase

case choice 
when "add"
    puts "Movie name"
    title = gets.chomp
    puts "Rating"
    rating = gets.chomp
    if !movies[:title]
      movies.merge!(title.to_sym => rating.to_i)
      puts movies
      puts "#{title} rated #{rating} Added!"
    else 
      puts "#{title} is already in database!"
    end 
when "update"
    puts "Movie name?"
    title = gets.chomp.to_sym
    if !movies[:title] 
    puts "Oops! Movie is not in the database!"
    else 
    puts "Update rating"
    rating = gets.chomp.to_i
    movies[:title] = rating
    end
    puts "#{title} Updated!"
when "display"
  movies.each do |title,rating| 
    puts "#{title} : #{rating}"
  end 
when "delete"
  puts "Movie name?"
  title = gets.chomp
  if !movies[title.to_sym] 
  puts "Not in the database!"
  else
  movies.delete(movies[title.to_sym])
  puts "#{title} Deleted!"
  end 
else puts "Error!"
end 