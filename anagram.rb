
def anagrams word

# Setting up the Dictionary

	dictionary = []
	f = File.readlines("enable.txt")

	f.each do |line|
		dictionary.push line.chomp
	end


	temp_result = []

	word = word.split("")



	dictionary.each do |dic_word|

		# First trim checking if length and first letter match

		if dic_word.length == word.length && word.include?(dic_word[0])

			# If each letter is at least one time include

			letters_include = true
			word.each do |letter|
				unless dic_word.include?(letter)
					letters_include = false
					break
				end
			end
			if letters_include == true
				temp_result << dic_word
			end
		end
	end
	

	result = []

	# Check that each letter is present the good number of times

	temp_result.each do |potential_word|
		trial = potential_word.split("")
		word.each do |letter|
			# If trial contain letter, delete the letter
			if trial.index(letter)
				trial.delete_at(trial.index(letter))
			end
		end
		# If trial is empty, all letter matching, and word different that origin
		if trial == [] && potential_word != word.join("")
			result << potential_word
		end
	end
	result
end

puts anagrams "pears"
