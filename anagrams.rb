# find all possible combinations of letters in (word)
def combos str

	return [] if str.size == 0 # empty string
	return [str[0]] if str.size == 1 # 1 letter
	
	# 2 letters - only two combinations
	if str.size == 2 
		return [str[0]+str[1], str[1]+str[0]]
	end

	# more than 2 letters
	str_combos = [] # initialize array that will collect all combos
	str.length.times do |i| # iterate through each letter in str
		sub_str = str[0...i] + str[i+1..-1] # create "sub-str", the original str with one letter removed in each iteration
		sub_str_combos = combos(sub_str) # find all possible combos of sub_word using recursion
		sub_str_combos.length.times do |j| # iterate through each element in sub_combo
			str_combos << str[i] + sub_str_combos[j]; # add previously removed letter to front of "sub-word" combos
		end
	end
	return str_combos

end

# given "enable.txt" file with collection of words, each on a line
# find all viable anagrams of (word) based on "enable.txt"
def anagrams word

	# check if "enable.txt" is present
	return "enable.txt not found" if !FileTest.exist?("enable.txt")

	# test for valid argument
	word.split("").each do |char|
		return nil if /[^A-Za-z]/.match(char)
	end

	# all possible combinations of word
	word_combos = combos(word)

	# search for words from "enable.txt" & store any matches
	word_anagrams = []
	IO.foreach("enable.txt") do |enable_word|
		word_combos.each do |combo_word|
			if enable_word.chomp.upcase == combo_word.upcase && enable_word.chomp.upcase != word.upcase
				word_anagrams << combo_word.upcase
			end
		end
	end

	return word_anagrams

end

# tests 
puts anagrams("pears").inspect
puts "------------------"
puts anagrams("zygote").inspect

