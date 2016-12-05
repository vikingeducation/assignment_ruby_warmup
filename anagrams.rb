def anagrams(input)
  anagrams = []
  input = input.upcase
  File.foreach('enable.txt') do |word|
    copy = input.clone
    word = word.upcase.chomp
    if input.length == word.length
      word.each_char do |letter|
        break unless copy.include?(letter)
        copy = copy.sub(letter, "")
      end
      if copy == '' && word != input
        anagrams << word
      end
    end
  end
  anagrams
end

anagrams("peras")
