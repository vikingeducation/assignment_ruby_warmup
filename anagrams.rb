def anagrams(word)
	sorted_word=word.split(//).sort
	dictionary = File.open("enable.txt", "r").readlines.each.to_a
	anagrams_array=[]

	dictionary.each do |d|
		sorted_dictionary_word=d.strip.split(//).sort
		if (word!=d && sorted_dictionary_word==sorted_word)
			anagrams_array<<d
		end
	end

	puts anagrams_array
end

anagrams("pears")