# Anagrams method
def anagrams word
  # Load dictionary
  file = File.open("enable.txt", "r")
  dictionary = file.read.split("\n")

  word_array = word.chars.to_a
  possible_words = word_array.permutation(word.length).to_a

  anagrams = []
  possible_words.each do |letter_array|
    possible_word = letter_array.join
    anagrams << possible_word if dictionary.include? possible_word
  end
  anagrams.delete(word)
  anagrams
end

puts anagrams("pears").to_s