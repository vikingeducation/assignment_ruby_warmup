def anagrams(word)
  dictionary = []
  f = File.open("zingarelli2005.txt")
  f.each_line do |line|
    dictionary << line.strip
  end
  legal_anagrams = []
  dictionary.each do |entry|
    if are_these_anagrams?(entry,word.upcase)
      legal_anagrams << entry
    end
  end
  legal_anagrams
end

def are_these_anagrams?(word1,word2)
  word1 != word2 && word1.split("").sort == word2.split("").sort
end