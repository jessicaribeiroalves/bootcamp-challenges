# Count the vowels
# Write a method that will take a string and return an array of vowels used in that string.

# Example:

# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

def vowels(string)
    
    myvowels = "aeiouAEIOU".chars
    
    string.chars.select {|character| myvowels.include?(character)}  
    
end