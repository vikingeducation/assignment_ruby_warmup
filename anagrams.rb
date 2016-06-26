def anagrams(word)
  file = File.open('enable.txt', 'r')	
  dictionary = file.read.split("\n")
  file.close

  anagrams = []
  sorted_word = word.downcase.chars.sort.join
  
  dictionary.each do |dictionary_word|
    sorted_dictionary_word = dictionary_word.chars.sort.join
    if sorted_word == sorted_dictionary_word
      anagrams << dictionary_word
    end
  end

  anagrams
end
