#Write a method anagrams which returns an array of anagrams that can be made with the specified string. Assume the input is only a single word (e.g. "loot" not "William Shakespeare")
## Note: "pears" doesn't appear in the output
#> anagrams("pears")
# => ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]

#> anagrams("zygote")
#=> []

def anagrams(word, dictionary_array)
  valid_anagrams = []
  word = word.upcase #to compare without case differences
  letters = word.split("")

  #permutation
  possibilities = letters.permutation.to_a

  possibilities.each do |option|
    string = option.join
    valid_anagrams << string if dictionary_array.include? (string)
  end

  #remove original word
  valid_anagrams -= [word]
  print valid_anagrams
end

anagrams("pears", ["APERS","APRES","ASPER","PARES", "PEARS", "PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"])

anagrams("zygote", [])