def substrings(string,dictionary)
    qualified_entries = []
    dictionary.each do | entry| 
        if entry.include?(string) == true
            qualified_entries.push(entry);
        end
    end
    return { string => qualified_entries.length }
end

puts(substrings("below",["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]))