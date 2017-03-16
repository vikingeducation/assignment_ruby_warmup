def anagrams(input_word)
	anagrams = []

	# split and alphabetize input_word
	alpha_input_word = input_word.split("").sort

	# load dictionary
	file = File.open('enable.txt', 'r')
	dictionary = file.read.split("\n")
	file.close

	# split words from dictionary and alphabetize chars
	dictionary.each do | dictionary_word |
		alpha_dictionary_word = dictionary_word.split("").sort

		# checks if alphabetized chars of dictionary word match input_word
		if dictionary_word == input_word
			next
		elsif alpha_dictionary_word == alpha_input_word
			anagrams.push(dictionary_word)
		end
	end

	puts anagrams

end

anagrams("pears")