def substrings(string,dictionary)
    qualified_entries = []
    dictionary.each do | entry| 
        if entry.include?(string) == true
            qualified_entries.push(entry);
        end
    end
    return { string => qualified_entries.length }
end

def layered_string(string,dictionary)
   matched_strings = Hash.new(0)

   dictionary.each do |word| 
        passed = string.scan(word).length
        matched_strings[word] = passed unless passed == 0 
   end
   return matched_strings
end
