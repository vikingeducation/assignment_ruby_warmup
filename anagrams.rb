def anagrams(string)
  string.downcase!
  anagrams = []
  file_contents = File.read("enable.txt")

  permutations = string.chars.permutation.map &:join
  permutations.each do |word|
    file_contents.each_line do |line|
      anagrams << word.upcase if (word.chomp != string) && (word.chomp == line.chomp)
    end
  end

  return anagrams.sort.uniq
end
