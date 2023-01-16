dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

word = "Howdy partner, sit down! How's it going?"

def check_word(word,dict_word)
  dict_iteration = 0
  word_length = word.length-1
  word_matched = ""
  for i in 0..word_length
    if word[i].downcase == dict_word[dict_iteration]
      word_matched += dict_word[dict_iteration].to_s
      dict_iteration += 1
    end
    word_matched
  end
  if word_matched.downcase != dict_word.downcase
    word_matched = nil
  end
  word_matched
end

def substrings(word, dictionary)
  array = []
  for i in 0..dictionary.length-1
    fnc_call = check_word(word, dictionary[i])
    if fnc_call == nil
      next
    end
    array << [fnc_call]
    array = array.flatten
  end
  hash = array.reduce(Hash.new(0)) do |sum, current|
    sum[current] += 1
    sum
  end
  hash
end

p substrings(word,dictionary)