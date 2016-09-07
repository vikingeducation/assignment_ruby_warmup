=begin Anagram Testing

Write a method anagrams which returns an array of anagrams that can be made with the specified string. Assume the input is only a single word (e.g. "loot" not "William Shakespeare").

Download enable.txt, a popular Scrabble dictionary, and load it in as your dictionary of choice. If you haven't encountered Ruby's file I/O yet, you can test your method by simply providing an array of known anagrams like those below to check that it works properly.

You can use Dir.pwd to output the current directory. If you can't find the dictionary, double check the directory you're executing your script from within.
=end

def anagrams(str)
    dictionary = ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR", "", "SOR", "APREE"]
    answers =[]
    dictionary.each do |word|
        if word.length == str.length && word != str
            word_array=word.split("")
            str.upcase.each_char do |char|
                word_array.length.times do |i|
                    if char ==word_array[i]
                        puts char
                        word_array.delete_at(i)
                        break
                    end
                end
            end
            if word_array.length==0
                answers << word
            end
        end
    end
    answers
end


# Note: "pears" doesn't appear in the output
print anagrams("pears")
# => ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]

print anagrams("zygote")
#=> []