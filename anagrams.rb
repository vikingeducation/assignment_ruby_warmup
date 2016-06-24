# Anagram Testing

# Write a method anagrams which returns an array of anagrams that can be made with the specified string. Assume the input is only a single word (e.g. "loot" not "William Shakespeare").

# Download enable.txt, a popular Scrabble dictionary, and load it in as your dictionary of choice. If you haven't encountered Ruby's file I/O yet, you can test your method by simply providing an array of known anagrams like those below to check that it works properly.

# You can use Dir.pwd to output the current directory. If you can't find the dictionary, double check the directory you're executing your script from within.

# Example:

# # Note: "pears" doesn't appear in the output
# > anagrams("pears")
# # => ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]

# > anagrams("zygote")
# #=> []


def anagrams(word)

  dictionary = File.open("enable.txt").read.split("\n")

  dictionary_array = word.chars.to_a
  matches = dictionary_array.permutation(word.length).to_a

  my_anagrams = []
  matches.each do |i|
    matches = i.join
    if dictionary.include?(matches)
    	my_anagrams.push(matches) 
    end
  end
  my_anagrams.delete(word)

  return my_anagrams.sort_by(&:downcase)
end