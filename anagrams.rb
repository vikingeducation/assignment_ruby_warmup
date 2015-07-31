def anagrams(word)
	words = File.open('./enable.txt', 'r')
	anagrams = []
	words.readlines.each do |l|
		word_sorted = word.chars.sort.join
		l = l.gsub(/\n/, '')
		line_sorted = l.chars.sort.join
		anagrams << l if line_sorted == word_sorted
	end
	words.close
	anagrams - [word]
end

# puts anagrams('pears').inspect
# puts anagrams('silent').inspect