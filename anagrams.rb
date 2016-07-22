def anagrams(word)
  anagrams = [ ]
  File.open("enable.txt", "r") do |dictionary|
    dictionary.each_line do |line|
      if line.strip.downcase.split(//).sort == word.strip.downcase.split(//).sort
        anagrams << line.chomp
      end
    end
  end
  anagrams.delete(word)
  anagrams.sort
  puts anagrams
end