def anagrams(word)
  sorted_word = word.strip.downcase.chars.sort.join
  actual_anagrams = []

  File.foreach("./enable.txt") do |line|
    dictionary_word = line.strip
    sorted_line = dictionary_word.chars.sort.join
    actual_anagrams << dictionary_word if sorted_line == sorted_word
  end

  actual_anagrams -= [ word.strip ]

  # Return the final list of anagrams in upper case
  actual_anagrams.map { |item| item.upcase }

end
