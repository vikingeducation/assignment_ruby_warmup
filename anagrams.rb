def anagrams(word)
	
	word_value = word.chars.sort #sorts individual letters
	anagram = [] #an array to push all anagrams into

	file = File.open("enable.txt", "r") #read dictionary

	file.each_line do |entry|
		entry = entry.gsub(/\n/, "") # removes "\n"
		entry_value = entry.chars.sort # sorts individual letters

		if entry_value == word_value # checks if anagram
			anagram << entry
		end
	end

	return anagram
end