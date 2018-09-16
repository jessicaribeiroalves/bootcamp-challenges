# Find the first non-repeated character
# Write a method that will find the first non-repeated character in a String. Return false if only repeats are found.

# Beast mode: can you return on the first non-repeat, without checking every other letter?

# Beat mode++: can you maintain linear time?

# Example:

# firstNonRepeat('aaaabbbcccdeeefgh') returns 'd'
# firstNonRepeat('wwwhhhggge') returns 'e'
# firstNonRepeat('awwwhhhggge') returns 'a'
# firstNonRepeat('wwwhhhggg') returns false

def firstNonRepeat (string)

    myarray = string.chars
    i = 0

    while i < myarray.length

        if myarray[i] != myarray[i + 1] && i == 0
            return myarray[i]

        elsif myarray[i] != myarray[i + 1] && myarray[i] != myarray[i - 1]
            return myarray[i]

        else
        i += 1
        end
    
    end
    
    return false

end