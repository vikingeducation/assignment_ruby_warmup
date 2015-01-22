def anagrams word
  textfile =  File.new("enable.txt", "r")
  dictionary_of_words = textfile.readlines
  anagrams_of_word = []
  dictionary_of_words.each_with_index do |item, index|
    if (is_an_anagram_of?(word, item.chomp))
      anagrams_of_word.push(item.chomp)
    end
  end
  return anagrams_of_word
end

def is_an_anagram_of? (my_word, a_word)
  if(my_word.length == a_word.length )
    my_word_split = my_word.split("")
    a_word_split = a_word.split("")

    a_word_split.each do |item|
      if (my_word_split.include?(item))
      else
        return false
      end
    end
    return true
  else
    return false
  end
end

puts anagrams "pears"