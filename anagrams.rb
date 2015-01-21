dictionary = File.open("enable.txt", "r").readlines.each.to_a
def anagrams(word)
	# puts dictionary.readlines.each
	# puts "Smith"[0]
	# puts "Smith"[1]
	# puts "Smith"[2]
	# puts "Smith"[3]
	# puts "Smith"[4]
	unique_letters=word.split(//).uniq
	# puts unique_letters
	word_hash=[]
	i=0
	while i<unique_letters.size
		word_hash[unique_letters[i]]=word.count(unique_letters[i])}
		i=i+1
	end
	puts word_hash
end

anagrams("peeaarrs")