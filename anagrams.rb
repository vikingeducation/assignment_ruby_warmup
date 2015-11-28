
def dict_to_array(fname)
	dict_file = File.open(fname, "r")
	words_array = IO.readlines(dict_file)
	dict_file.close
    return words_array
end

def find_anagrams(anagram_word,fname)
	anagram_array = Array.new
	anagram_word = anagram_word.downcase
	anagram_word_size = anagram_word.size
	sorted_anagram_word = anagram_word.chars.sort.join

	dict_to_array(fname).each do |word|
		word = word.chomp
		if anagram_word_size == word.size && anagram_word != word
			sorted_word = word.chars.sort.join

			if sorted_word == sorted_anagram_word 
				anagram_array << word
			end
		end
	end
    return anagram_array.inspect
end

puts find_anagrams("PEARS","enable.txt")
puts find_anagrams("zygote","enable.txt")
puts find_anagrams("door","enable.txt")