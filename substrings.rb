def substrings(message, dictionary)
  word_matches = {}

  dictionary.each do |word| 
    matches = message.upcase.scan(word.upcase).size
    word_matches[word] = matches if matches > 0
  end

  word_matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)