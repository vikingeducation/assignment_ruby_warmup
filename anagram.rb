DICTIONARY = File.read('enable.txt').split(/\n/)

def letter_frequency(word)
  frequency_count = {}

  word.split('').each do |letter|
    if frequency_count[letter].nil?
      frequency_count[letter] = 1
    else
      frequency_count[letter] += 1
    end
  end

  frequency_count.sort
end

def anagrams(user_word)
  puts "The anagrams for the word #{user_word} are:"
  list_of_anagrams = []

  letter_count_of_user_word = letter_frequency(user_word)

  DICTIONARY.each do |word|
    letter_count_of_dictionary_word = letter_frequency(word)

    if letter_count_of_user_word == letter_count_of_dictionary_word
      list_of_anagrams << word
    end
  end

  p list_of_anagrams
end

anagrams("pears")
anagrams("stars")
anagrams("stairs")
