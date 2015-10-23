def anagram(str)
	arr = []
	str_array = str.split(//)
	word_array = []
	word = str.split("")

	file = File.open("enable.txt", "r")
	dictionary = file.readlines

 	dictionary.each do |word|
 		if  word.length - 1 == str.length && word.split(//).sort.pop(str.length).join('') == str.split(//).sort.join('')
 			word_array << word.split("\n").join
 		end
	end
	print word_array - [str]

end

anagram("bears")