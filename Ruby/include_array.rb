# Is it in the array?
# Write a method that will take two arguments: a string and an array. Return a boolean indicating whether or not the string is found in the array.

# Example:

# in_array("hello", ["hi", "howdy", "hello"]) should return true
# in_array("drake", ["jayz", "kanye", "yachty"]) should return false

def in_array (mystring, myarray)

    if myarray.include?(mystring) == true
        return true
    else
        return false
    end
  
end