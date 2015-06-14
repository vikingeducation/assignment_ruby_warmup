def anagrams(input_word)
  file = File.open("enable.txt").read
  all_words = file.split("\n")
  anagram_words = []

  all_words.each do |word|
    if word.split("").sort == input_word.downcase.split("").sort
      anagram_words << word
    end
  end
  return anagram_words
end

p anagrams("pears")