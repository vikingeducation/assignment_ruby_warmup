# Write a method anagrams which returns an array of anagrams that can be 
# made with the specified string. Assume the input is only a single word 
# (e.g. "loot" not "William Shakespeare").

# Download enable.txt, a popular Scrabble dictionary, and load it in as 
# your dictionary of choice. If you haven't encountered Ruby's file I/O yet, 
# you can test your method by simply providing an array of known anagrams 
# like those below to check that it works properly.

def anagrams(word)
  dictionary = File.readlines(Dir.pwd << "/enable.txt").map { |word| word.chomp }
  anagrams = []

  word = word.split("")
  word.permutation.to_a.each do |possible_perm|
    anagrams << possible_perm.join.upcase if dictionary.include?(possible_perm.join)
  end
  anagrams
end
