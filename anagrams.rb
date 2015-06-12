def anagrams (word)

	@word = word.split(//)
	results = []

	File.open('enable.txt') do |f|
		f.any? do |line|
			line = line.split(//)
			if @word == line
			end
		end
	end
return results
end


result = anagrams("pear")

puts "This is my result #{result}"