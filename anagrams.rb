def anagrams(input)
  processed_input = input.downcase.chars.sort.join
  matches = []

  IO.foreach('enable.txt') do |word|
    word = word.sub("\n", "")
    processed_word = word.downcase.chars.sort.join
    matches << word if (processed_word == processed_input) && (word != input)
  end

  if matches.length > 0
    puts "Anagrams for '#{input}' are:"
    puts matches
  else
    puts "Sorry, there are no anagrams for '#{input}'."
  end
end

anagrams('pears')