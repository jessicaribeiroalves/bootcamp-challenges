# Dictionary
# Extend the Dictionary class.
# It should have three methods:

# .add_word(word, definition) Should store a word and definition

# .lookup(word) Should return a definition

# .total_words Should return the number of words stored

# Example:
# dictionary = Dictionary.new
# dictionary.add_word('ruby', 'A precious stone')
# dictionary.total_words should return 1
# dictionary.lookup('ruby') should return 'A previous stone'

class Dictionary
    def initialize
        @dictionary = {}
    end
  
    def add_word(word, definition)
      @dictionary[word] = definition
    end
  
    def lookup(word)
      arr = @dictionary.values_at(word)
      arr[0]
    end
  
    def total_words
      @dictionary.count
    end
  
  end