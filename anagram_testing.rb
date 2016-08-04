def anagrams word_argument
  confirmed_anagrams = []
    
  all_words_array = File.open("enable.txt", "r")
  read = all_words_array.read
  scanned = read.scan(/\b\w+\b/)

  scanned.each do |test_word| 
    anagram_test = test_word.split("").sort == word_argument.split("").sort
    anagram_test = anagram_test && (test_word != word_argument)
  	
  	confirmed_anagrams << test_word.upcase if anagram_test
  end
    
  return confirmed_anagrams
  
end



p anagrams 'pears'