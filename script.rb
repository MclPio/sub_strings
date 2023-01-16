dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

word = "below"

def substrings(string, dictionary)
  hash = {}
  dictionary.each do |item|
    if string.index(item)
      hash[item] = 1
    end
  end
  hash
end

p substrings(word, dictionary)