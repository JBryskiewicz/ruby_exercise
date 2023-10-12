dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
test_string = "Low below, where down below is low"

def substrings(words, dictionary)
  
  result = Hash.new(0)
  lowcase_words = words.downcase

  dictionary.each do |word|
    matches = lowcase_words.scan(word).length
    result[word] = matches unless matches == 0
  end

  return result
  
end 

puts substrings(test_string, dictionary)