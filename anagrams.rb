def anagrams (word)

	dict = File.open('enable.txt').read
	results = []

	dict.each_line do |line|
			line.chomp!
			if word.split(//).sort == line.split(//).sort
				results << line if word != line
			end
		end
	return results
end


print "Find all anagrams for the word: "
my_word = gets.chomp

print "#{anagrams(my_word)} \n"

