def anagrams(filename)
  split_array = []
  joined_array = []

  word = File.read(filename).lines.sample.strip
  split_array = word.split("")

  #Can make number higher if needbe.
  10.times do |word|
    split_array.shuffle!
    joined_array << split_array.join
  end
  joined_array.uniq!

  print joined_array
end

print anagrams("enable.txt")
