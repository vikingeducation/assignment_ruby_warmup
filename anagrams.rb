
def anagrams(word)

  #list of possible anagrams, replace with full dictionary as resources allow
  dictionary = ["APES", "FOO", "APER", "APPEAR", "APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]

  anagrams = []

  dictionary.each do |anagram|

    if anagram.length != word.length

      next

    elsif anagram.split("").sort == word.upcase.split("").sort

      anagrams << anagram

    end

  end

  anagrams

end
