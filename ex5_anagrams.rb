# Write a method anagrams which returns an array of anagrams that can
# be made with the specified string. Assume the input is only a single
# word (e.g. "loot" not "William Shakespeare").

# http://s3.amazonaws.com/viking_education/web_development/web_app_eng/enable.txt

def anagram?(a, b)
  a.chars.sort.join == b.chars.sort.join
end

def anagrams(word)
  results = []
  word_length = word.length
  puts word

  # adapted from http://stackoverflow.com/a/7157219
  begin
    file = File.new("ex5_dictionary.txt", "r")
    while (line = file.gets)
      line = line.strip
      if line.length == word_length
        if anagram?(word, line)
          results.push(line.upcase)
        end
      end
    end
    file.close
    return results
  rescue => err
    puts "Exception: #{err}"
  end
end



# Note: "pears" doesn't appear in the output
p anagrams("pears")
# => ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]

p anagrams("zygote")
#=> ["ZYGOTE"]
