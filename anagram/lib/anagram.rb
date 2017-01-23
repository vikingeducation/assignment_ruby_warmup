require "#{APP_ROOT}/assignment_ruby_warmup/dict.txt"

def anagrams(word)
	anagrams = []
	f = File.open('dict.txt', 'r')
	f.each_line do |dict_word|
		if dict_word.chomp.length == word.length
			anagrams << dict_word.chomp if word.chars.sort.join == dict_word.chomp.chars.sort.join
		end
	end
	p anagrams
end

def run_anagrams
	puts "Enter a word to reveal all possible anagrams of the word!:\n"
	word = gets.chomp
	anagrams(word.upcase)
end
	
