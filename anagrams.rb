def anagram_finder(word_input, word_dictionary)
  anagrams = []
  possible_words = word_input.split('').permutation.map { |split_word| split_word.join('') }
  possible_words.each do |word|
    anagrams << word.upcase if word_dictionary.include?(word.downcase) && word != word_input
  end

  anagrams.uniq.sort
end

dictionary = File.readlines('enable.txt').map(&:chomp)
print 'Please enter a word: '
word_input = gets.chomp

print anagram_finder(word_input, dictionary)
