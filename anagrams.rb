def anagrams(word)
  dictionary = []
  f = File.open("enable.txt")
  f.each_line do |line|
    dictionary << line.strip
  end
  dictionary.each_with_object([]) do |entry, legal_anagrams|
    if are_these_anagrams?(entry.upcase,word.upcase)
      legal_anagrams << entry.upcase
    end
  end
end

def are_these_anagrams?(word1,word2)
  word1 != word2 &&
  word1.split("").sort == word2.split("").sort
end