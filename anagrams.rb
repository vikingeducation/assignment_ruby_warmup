def anagrams(word)
	dictionary = File.readlines("enable.txt")
	dictionary.map! {|line| line.strip}

	permed_words = word.split(//).permutation.to_a.sort.map {|ele| ele.join}
	permed_words.select {|perm_word| dictionary.include?(perm_word) && (perm_word != word) }
	# anagrams = dictionary.select {|dict_word| permed_words.include?(dict_word) && (dict_word != word) }
end

puts anagrams("pears")