def anagram(input_word)
   anagram_list = []
   dictionary = IO.readlines('enable.txt')
   dictionary.each do |word|
     if input_word.chars.sort.join == word.chomp.chars.sort.join then
       anagram_list << word.chomp
     end
   end
   anagram_list.delete(input_word)
   puts "The anagrams for #{input_word} are #{anagram_list}"
 end

 puts "Please enter any word:"
 input_word=gets.chomp
 anagram(input_word)
