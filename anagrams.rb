def anagrams(word,anagrams_array)
  answer_array = []
  new_word = word.upcase.split("")
  print new_word
  anagrams_array.each do |w|
    if w.split("") & new_word == w.split("")
      answer_array << w
    end
  end
  print answer_array
end

anagrams("pears",["APERS","APRES","ASWIR","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"])
