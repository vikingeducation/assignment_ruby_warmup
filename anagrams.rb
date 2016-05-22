def anagrams(test_word)
  dictionary = File.open("/Users/grahamturner/documents/development/VCS_prep_work/assignment_ruby_warmup/enable.txt")
  dictionary_words = dictionary.read.split("\n")
  grams = dictionary_words.select do |word| 
  	next unless test_word.length == word.length
  	next if test_word == word
    test_word.upcase.split('').sort == word.upcase.split('').sort
  end
end

anagrams("pears")
