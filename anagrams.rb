def anagrams(input)
  dictionary = IO.readlines("enable.txt")
  anagrams = []
  letters = input.split('').sort!.join('')

  dictionary.each do |word|
    word = word.chomp
    if word.split('').sort!.join('') == letters
      anagrams << word
    end
  end

  anagrams.delete(input)
  anagrams
end