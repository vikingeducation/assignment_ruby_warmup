def anagrams(word)
  words = []
  lines = IO.readlines("./enable.txt")
  lines.each { |line| words << line.chomp if word.split("").sort == line.chomp.split("").sort }
  words
end
puts anagrams("pears")
puts anagrams("zygote")
