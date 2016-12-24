dictionary = File.readlines('enable.txt').map(&:chomp)

print 'Please enter a word: '
word_input = gets.chomp

possible_words = word_input.split('').permutation.map { |split_word| split_word.join('') }

anagrams = []
possible_words.each do |word|
  anagrams << word.upcase if dictionary.include?(word.downcase) && word != word_input
end

anagrams.uniq!

print anagrams.sort
