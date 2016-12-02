def anagrams(word)
  anagram_words=[]
  sort_word = word.chars.sort.join.upcase
  dictionary_word = File.read('enable.txt').split("\n") #turn the enable.txt file into an array of words seperated by new-line
  dictionary_word.map!(&:upcase) #convert all words in the array to uppercase
  sorted_words = Hash[dictionary_word.collect {|z| [z, z.chars.sort.join]}] #create a Hash with the key be the words in the array and the value being those words sorted alphabetically
  sorted_words.each do |key,value|
    if sort_word === value
      anagram_words.push(key)
    end
  end
  #Loop through the entire hash to match sorted word with any sorted dictionary_words. If match found push the unsorted word to the anagram_words array.
  if anagram_words.include?(word.upcase)
    anagram_words.delete(word.upcase)
  end
  #Remove the original word from the array
  return anagram_words
end

puts anagrams("pears")

