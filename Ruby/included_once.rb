# Included once
# Write a method that takes an array and a string. Return true if the string is found in the array only once. Otherwise return false.

# What's the time complexity of your solution? Can it be improved?

# Example:

# includedOnce(['hello','hi','hi'], 'hi') returns false
# includedOnce(['hello','hi','hey'], 'hi') returns true

def includedOnce(haystack, needle)
  
    counter = haystack.count { |x| x == needle}
    if counter == 1
        return true
    elsif counter > 1
        return false
    else
        return false
    end
    
end

# improved solution

def includedOnce(haystack, needle)

    haystack.count { |x| x == needle} == 1
    
end