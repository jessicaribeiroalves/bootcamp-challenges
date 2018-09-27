# Is it in the array? (Part 2)
# Don't use any array helper methods except for .each
# This is the same as the "Is it in the array?" challenge with one improvement:
# in_array_advanced takes an additional boolean argument 'strict'.
# If strict is true, in_array should care about leTteR CasIng.
# If strict is false, in_array should return true for any match.

# Example:
# in_array("HeLLo", ["hi", "howdy", "HeLLo"], true) should return true
# in_array("DrAkE", ["jayz", "kanye", "drake"], false) should return true
# in_array("DrAkE", ["jayz", "kanye", "yachty"], false) should return false

def in_array_advanced (needle, haystack, strict)
    haystack.each do |x|
      	if strict && x == needle
            return true
        elsif strict == false && x.downcase == needle.downcase
            return true
        end
        
    end
    return false
end

p in_array_advanced("HeLLo", ["hi", "howdy", "HeLLo"],true)
p in_array_advanced("HeLLo", ["hi", "howdy", "hello"], false)
p in_array_advanced("DrAkE", ["jayz", "kanye", "yachty"], false)