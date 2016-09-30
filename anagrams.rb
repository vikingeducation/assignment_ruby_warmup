# Returns an array of anagrams that can be made with the specified string. Assume the input is only a single word

def anagrams(word)

# The big idea is that all anagrams are identical when sorted. So 
# if you build a hash of lists, where the keys are sorted words and the value is the list of words that sorts to the given key, then you can find anagrams very  quickly by sorting the word and looking up in your hash.  

  anagram_to_find = word.chars.sort.join

  # Print working directory
  current_dir = Dir.pwd

  word_dictionary = Hash.new(Array.new)
  # The values in the hash to be stored as an array
  words_so_far = [] 

  File.open(current_dir+"/enable.txt", "r").each do |line|
    clean_word = line.chomp
    sorted_word = clean_word.chars.sort.join

    # If the hash key is already present append to it or add it as a new key
    if(word_dictionary.key?(sorted_word))
      word_dictionary[sorted_word] += clean_word
    else
      # Add a new key to the hash - words are stored in an array
      # word_dictionary[sorted_word] = words_so_far << clean_word
      word_dictionary[sorted_word] = clean_word
    end
  end

  # For the given word, print its anagrams from the hash
  
  puts

  if(word_dictionary.key?(anagram_to_find))
    puts word_dictionary[anagram_to_find]
  else
    puts "[]"
  end
end


anagrams("pears")
# anagrams("abacus")
