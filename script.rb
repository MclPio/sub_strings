dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","down"]

word = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
  hash = {}
  dictionary.each do |item|
    string.split(" ").each do |str|
      if str.downcase.index(item) && hash[item] == nil
        hash[item] = 1
      elsif str.downcase.index(item)
        hash[item] += 1
      end
    end
  end
  hash
end

p substrings(word, dictionary)