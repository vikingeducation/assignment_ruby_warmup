def anagram(string)
  results = []
  anagrams = string.split("").permutation.to_a
  word_list = IO.readlines("enable.txt")

  anagrams.collect! do |word|
    word.join("").downcase
  end

  # remove duplicates for faster results
  anagrams.uniq!

  anagrams.each do |word|
    if word_list.include?(word)
      results << word
    end
  end

  return results
end

anagram("pears")
