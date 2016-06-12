def anagrams(word)
  lowercase_word = word.downcase

  # Obtain all the letters of the word in an array
  letters = lowercase_word.split("")

  # Read all the words from the Scrabble dictionary into a hash table.
  # A hash table requires more memory than an array for storing words,
  # but search is a lot faster in the former than it is in the latter.
  dictionary = Hash.new
  IO.foreach("./enable.txt") do |line|
      a_word = line.strip
      dictionary[a_word] = 1
  end

  # Obtain all the possible anagrams of word in a lazy manner
  possible_anagrams =
    letters.permutation.lazy.map { |item| item.join }

  # Filter the possible anagrams using the dictionary
  actual_anagrams =
    possible_anagrams.select { |item| dictionary.has_key?(item) }

  # Final list of anagrams
  final_list = actual_anagrams.to_a.uniq.sort - [ lowercase_word.strip ]

  final_list.map { |item| item.upcase }

end
