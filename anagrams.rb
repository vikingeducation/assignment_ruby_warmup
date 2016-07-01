def anagram(match_this)
	anagrams = []
	File.foreach("dictionary.txt")  do |line|
		if line[0..-2].split("").sort == match_this.split("").sort
			anagrams << line[0..-2]
		end
	end
	p anagrams
end

p anagram("pears")