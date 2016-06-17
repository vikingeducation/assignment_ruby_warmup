def anagrams(word)
  sorted_word = word.split("").sort.join
  dictionary = []
  anagrams = []
  File.open("dictionary.txt").readlines.each do |line|
    if line.strip.split("").sort.join == sorted_word
      anagrams << line.strip
    end
  end
 
  if anagrams.length == 1 && anagrams[0] == word
    puts "No anagrams found"
  else
    puts anagrams
  end


  
end

puts anagrams("devious")



