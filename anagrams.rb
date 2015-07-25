input = "pears"

def anagrams(orig_word)
  word_array = orig_word.split("")
  anagram_array = []

  word_array.length.times do |letter|
    word_array.length.times do |compare_letter|
      temp = word_array[letter]
      orig = word_array[compare_letter]
      word_array[letter] = orig
      word_array[compare_letter] = temp
      test_word = word_array.join

      if open('enable.txt').grep(test_word)
        anagram_array.push(test_word)
      end

      word_array[letter] = temp
      word_array[compare_letter] = orig
    end
  end

  print anagram_array.uniq
end

anagrams(input)
