def anagrams(input)
  anagrams = []
  File.foreach('enable.txt') do |word|
    word = word.chomp
    next unless word.length == input.length
    if input.upcase.split("").sort == word.upcase.split("").sort
      anagrams << word
    end
  end
  anagrams
end

anagrams("peras")
