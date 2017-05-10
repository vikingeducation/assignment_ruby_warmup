def anagrams(search_word)
  search_word.upcase!
  search_word_letters = search_word.split('')
  anagrams = []

  File.foreach('./enable.txt') do |dict_word|
    dict_word.upcase!
    dict_word.strip!
    anagram = true

    if dict_word.length == search_word.length
      next if dict_word == search_word
      search_word_letters.each do |letter|
        unless dict_word.include?(letter)
          anagram = false
          break
        end
      end
      anagrams << dict_word if anagram
    end
  end
  anagrams
end

answer = %w[APERS APRES ASPER PARES PARSE PRASE PRESA RAPES REAPS SPARE SPEAR]
p anagrams('pears') == answer
