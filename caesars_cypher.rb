def caesars_cypher(str,num)
    num_reps = str.chars.map{ |letter| letter.ord }
    scramble_nums = num_reps.map{ |number| number + num }
    return scramble_nums.map{ |digit| digit.chr }.join
end

puts caesars_cypher("baba",6)
puts "#=> expecting \"hghg \" "
puts " "

puts caesars_cypher("Mando",10) 
puts " #=> expecting \"Wkxny\""
puts " "

# caesars_cypher function that takes a string and a number
# first we get the characters in the str in an array using the 
# chars method, after that use the map method to return number 
# equivalents of the letters using the ord method strored in the 
# num_reps variable. to scramble the numbers map over the num_reps 
# variable adding each digit to the number passed in as an argument. 
# map over the scrubled numbers to return their letter equivalents using 
# the .chr method and joining them in the encrypted word using the .join method.