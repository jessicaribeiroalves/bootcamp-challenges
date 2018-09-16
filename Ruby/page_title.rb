# Page title
# Write a method that takes a URL and returns the website's title.

# Examples:

# # returns "Google"
# pageTitle("http://google.com")
# # returns "reddit: the front page of the internet"
# pageTitle("http://www.reddit.com")

require 'open-uri'

def pageTitle(url)

  open(url) do |f|
    str = f.read
    str.scan(/<title>(.*?)<\/title>/)[0][0]
  end
    
end