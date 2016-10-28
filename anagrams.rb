puts "What's the word?"
my_word = gets.chomp.downcase

def anagrams(word)
  dictionary = IO.readlines("enable.txt")
  same_length = []
  anagrams = []
  dictionary.each { |dictionary_word|
    if dictionary_word.chomp.length == word.length && dictionary_word.chomp != word
      same_length << dictionary_word.chomp
    end
  }
  same_length.each { |potential_anagram|
    if potential_anagram.split("").sort == word.split("").sort
      anagrams << potential_anagram
    end
  }
  print anagrams
end

anagrams(my_word)