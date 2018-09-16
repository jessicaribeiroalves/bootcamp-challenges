# Palindrome
# Write a method that will take a word as a string and return a boolean indicating whether or not the word is a palindrome.

# Example:

# palindrome("hello") should return false
# palindrome("racecar") should return true

def palindrome (string)

    if string.reverse == string
        return true
    else
      return false
    end
    
end