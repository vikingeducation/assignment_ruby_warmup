require "open-uri"

DICTIONARY  = open('http://s3.amazonaws.com/viking_education/web_development/web_app_eng/enable.txt') {|f| f.read }

def anagrams(string)
  angs = DICTIONARY.split(' ').select {|w| w.split('').sort == string.split('').sort }
  angs.each {|w| w.upcase!}
  angs.join('').downcase == string ? p([]) : p(angs)
end

anagrams("pears") == ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]
anagrams("zygote") == []


