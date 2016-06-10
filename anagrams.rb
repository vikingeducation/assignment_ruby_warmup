########################################################
# anagrams.rb                                          #
#                                                      #
# display the valid scrabble words formed by all the   #
# anagrams of a string                                 #
#                                                      #
# Coded by: Stephen Kilgore                            #
########################################################
def anagrams (test_string)
	dictionary = Array.new
	File.open("enable.txt", "r") do |f|
		f.each_line do |word|
			dictionary.push(word.gsub(/[^0-9A-Za-z]/,'')) #remove all special chars with a regex 
		end
	end
	answer = Array.new
	test_arr = Array.new	
	test_arr = test_string.chars.permutation.map &:join #get all the permutations and then join them into an array
	test_arr.each do |i|
		if dictionary.include?(i) && i != test_string #check to see if it's in dictionary and doesn't repeat itself
				answer.push(i)
		end
	end	
	return answer.sort! #alphabetize array elements
end
print "#{anagrams('pears')} \n"
