def anagrams(input_string)

  #parse input_string into characters
  input_letters = input_string.downcase.split("")

  #create all possible combinations of those characters
  permutations_letters = input_letters.permutation.to_a

  possible_words = []
  #turn each permutation array into a string
  permutations_letters.each do |permutation|
      possible_words << permutation.join
  end


  #load dictionary as array
  dictionary_words = IO.readlines("enable.txt").map { |l| l.chomp }

  #check each possible combo to see if it's included in dictionary array
  possible_words.select do |possible_word|
    dictionary_words.include?(possible_word) && possible_word != input_string
  end

end