def anagrams(word)
  result = []
  dictionary = File.readlines("enable.txt")
  letters = word.downcase.split("")

  dictionary.each do |dictionary_word|
    dictionary_letters = dictionary_word.chomp.split("")
    if letters - dictionary_letters == []
      result << dictionary_word
    end
  end
  result
end