def solution number 
    if number < 0 
        return 0 
    else
        passed = []
        range = 0...number
        sum = 0

        puts "#{range}"
        
        range.each do |digit| 
            if digit % 3 == 0 or digit % 5 == 0 
                passed.push(digit)
                puts "#{passed}"
            end 
        end 

        return passed.reduce { |sum,num| sum + num } 
    end 
end 