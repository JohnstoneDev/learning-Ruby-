def bubble_sort(array)
    length = array.length;
    swapped = true 

    while swapped do 
        swapped = false 
        (length-1).times do |index| 
            number = array[index]
            nextIndex = index + 1 
            nextNumber = array[nextIndex]
    
            if number > nextNumber
                puts "#{number} is greater than #{nextNumber}"
                puts "#{array} before swap"
    
                array[index] ,array[nextIndex] = array[nextIndex] ,array[index]
                puts "#{array} after swap"
                swapped = true
            end 
        end  
    end 
    return array
end 

bubble_sort([4,3,78,2,0,2])

