# Assuming that letters are simply their ASCII values (A-Z is 001-026, a-z is 097-122, space is 032), attempt to decode the following text to find the message.

  # 09 74 20 69 73 20 17 65 64 6E 65 73 
  # 64 61 79 20 6D 79 20 64 75 64 65 74

# One way to start doing this is to first convert the hex into binary first. Each hex character becomes 4 'bits' of binary. For example 6E can be 6 and E. 6 is 0110 and E is 1110. Then when we combine these to form 01101110 We have the number 110. 
# How did I do this? E is the 14th number in hexdec. 
# Now I want you to create a Ruby terminal function which can take a list such as the one above and decode it into a string o characters.

def decoding(hexdec)
  decoded = hexdec.map { |element|
    element.to_i(16).to_s(2)
  }.map { |number|
    number.to_i(2)
  }.map { |n|
    if n < 27
      n += 64
    end
    n.chr
  }
end

hexdec = ["09", "74", "20", "69", "73", "20", "17", "65", "64", "6E", "65", "73","64", "61", "79", "20", "6D", "79", "20", "64", "75", "64", "65", "74"]
p decoding(hexdec).join()
