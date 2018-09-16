# Exes and Ohs
# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive.

# Examples:
# ExesAndOhs("ooxx") => true
# ExesAndOhs("xooxx") => false
# ExesAndOhs("sxoowxxoq") => true
# ExesAndOhs("oOxXxoXo") => true
# ExesAndOhs("oOxXxoX") => false
# ExesAndOhs("zpzpzpp") => true

def ExesAndOhs(string)
  
    counter_x = string.chars.count { |x| x == "x" || x == "X" }
    counter_o = string.chars.count { |x| x == "o" || x == "O"	}

    counter_x == counter_o

end