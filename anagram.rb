def anagrams(input_word)
  anagrams = []

  # split chars of input words into an array, alphabetize them
  alpha_word = input_word.split("").sort

  # load dictionary
  file = File.open('enable.txt', 'r')
  dictionary = file.read.split("\n")
  file.close

  # same as above for every word in the dictionary
  dictionary.each do | dictionary_word |
    # how efficient is this? :(
    alpha_dictionary_word = dictionary_word.split("").sort

    # check if the dictionary word is an anagram of input word, add it to anagrams array
    # skips the original input word
    if dictionary_word == input_word
      next
    elsif alpha_dictionary_word == alpha_word
      anagrams << dictionary_word
    end
  end

  puts anagrams
end

anagrams("pears")