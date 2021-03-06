# Count the letters
# Write a method that will take a string, keep count of each letter and return the totals as a hash.

# Example:

# count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, o=>1}
# count_letters("abcba") should return {"a"=>2, "b"=>2, "c"=>1}

def count_letters (string)
    result = {}
    
    string.chars.each do|letter|
      if result[letter] == nil
        result[letter] = 1
      else
        result[letter] += 1
      end
      
    end
    
    result
    
end