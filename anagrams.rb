def anagrams(test_word)
	test_word = test_word.split('').sort
	dictionary = File.open("/Users/grahamturner/documents/development/VCS_prep_work/assignment_ruby_warmup/enable.txt")
	dictionary_words = dictionary.read.split("\n")
	dictionary_words.select {|word| test_word == word.split('').sort}
end

anagrams("pears")
