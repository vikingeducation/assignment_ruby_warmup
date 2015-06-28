def anagrams(word, dictonary)
	word.upcase!
	puts word
	arr = word.split ""
	arr.sort!
	anagram = []
	dictonary.each do |dict_word|
		word_to_compare = dict_word.upcase
		word_to_compare = word_to_compare.split ""
		word_to_compare.sort!
		if (word_to_compare == arr) #&& (dict_word.length == word.length)
			anagram << dict_word
		end
	end
	puts anagram
end

anagrams("pears", ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR", "ADROIT"])

=begin
1. return array of anagrams
=end