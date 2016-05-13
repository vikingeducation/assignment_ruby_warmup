=begin
/Users/JoeBernardi/VCS/Dictionary/dictionary.txt
=end

# PROGRAM ANAGRAMS
def anagrams

	word = "pears"
# READ THE FILE AND STORE INTO AN ARRAY
	dictionary_array = IO.readlines('/Users/JoeBernardi/VCS/Dictionary/dictionary.txt')
regex = /^(?!.*(.).*\1)[pears]*$/
# DELETE /N FROM THE END OF EACH LINE
	dictionary_array.each { |w| w.delete!("\n")}
# SET UP THE NEW ARRAY TO STORE THE ANAGRAMS
	anagram_array = []

# CHECK EACH ITEM IN THE ARRAY TO SEE IF IT CONTAINS THE LETTERS
	dictionary_array.each { |k|
		# EVERY LETTER MUST BE PRESENT AND NO REPEATS UNLESS IN THE WORD
		if k.match(regex) && (k.length == word.length && k != word)
			anagram_array << k
		end }

print anagram_array

end


anagrams