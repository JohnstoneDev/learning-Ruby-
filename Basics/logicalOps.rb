# logical operators are used in expressions that have more than one condition

# (&&) returns true of both the left and the right expressions return true 

if 1 < 2 && 5 < 6 
    puts "All conditions true"
end 

# ^ this can also be written as 

if 1 < 2 and 5 < 6 
    puts "All conditions true"
end 

# using the && operator : 
    # evaluates from left to right
    # both expressions must return true 
    # if the first expression returns false, the second is never checked


# using the || operator 
    # evaluates from left to right 
    # if the first expression returns true, the second is never checked
    #  interpretion method known as short circuit evaluation 

if 10 < 2 || 5 < 6 
    puts "First expression is false, continues to the next"
end 

# ^ this can be written as 

if 10 < 2 or 5 < 6 
    puts "First expression is false, continues to the next"
end 

# the (!) operator : 
    # reverses the logic of the expression, if the expression returns true, will make it false

if !false #=> true 

if !(10 < 5) #=> true


# Case statements 
# neater way of writing several conditional expressions that would make a large if..elesif statement
# You can assign te return value of a case statement to a variable for later use 

grade = "F";

did_you_pass = case grade 
when 'A' then "Yes,you did"
when 'D' then "No, you didn't"
else "YOU SHALL NOT PASS"
end 

# if you need to do some more complex code manipulation, you can remove the "then" keyword 
# and instead place the code to be executed on the next line 

grade = "F"

case grade
when "A"
    puts "You are a genius"
    future_bank_account_balance = 5_000_000

when "D"
    puts "Giddy up buddy"
    can_i_retire_soon = false 

else 
    puts "You shall not pass"
    fml = true
end 


# unless statements 
# An unless statement works in the opposite way of an if statement
# it only processes the code in the block if the expression evaluates to false

age = 19 

unless age < 18 
    puts "Get a job"
end 

# ^ this can be written as : 

puts "Get a job" unless age < 18 

# You can add an else clause to an unless statement 

unless age < 18 
    puts "Down with that sort of thing"
else 
    puts "Careful now"
end 

# You should use an unless statement when you don't want to do something if a condition is true 
# it makes yor code more readable than using if !true


# Ternary operator 

# The ternary operator is a one line if...else statement that makes code more consise 
# Its syntax is 
    # conditional statement ? execute if true : execute if false 
#  You can assign the return value of the expression to a variable 

age = 19
response = age < 18 ? "You still have a life ahead of you" : "Grown.ish"
puts response;






