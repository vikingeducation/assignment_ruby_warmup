require 'open-uri'
file = open("http://s3.amazonaws.com/viking_education/web_development/web_app_eng/enable.txt")

DICT = file.readlines.map(&:chomp)


#DICTIONARY = ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]


def anagrams(word)
  perms = word.chars.permutation.to_a.map(&:join)
  perms.select{|anagram| DICT.include?(anagram)}.map(&:upcase)
end

p anagrams "pears"