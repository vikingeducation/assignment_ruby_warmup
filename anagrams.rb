def anagrams(word)
	anagram = []

	File.open("anagram.txt", "r").readlines.each do |line|
		word = word.chars.sort.join
		dict = line.chomp.chars.sort.join

		if word == dict
			anagram << line
		end
	end

	anagram
end

puts anagrams("pear")