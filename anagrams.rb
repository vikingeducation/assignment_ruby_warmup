# write method anagrams which retuns array of anagrams that can be made with specified string
# assume input is only a single word
# anagrams("pears")
# => ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]

def anagrams(string)
  anagrams = []
  sorted_string = string.split('').sort

  IO.foreach("enable.txt") do |word|
    anagrams << word.chomp if sorted_string == word.chomp.split('').sort && word.chomp != string
  end 

  anagrams
end

puts anagrams("pears")
puts anagrams("zygote")