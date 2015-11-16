=begin
  - Write a method anagrams (Done)
  - which returns an array of anagrams (Done)
  - that can be made with the specified string. (Done)
  - Assume the input is only a single word (Done)
  - (e.g. "loot" not "William Shakespeare"). (Done)


BRAINSTORMING
  - I see two ways of doing this
    1. get that dictionary and compare all the words in that dictionary to our word
      a. I'm talking the length of words
      b. what letters those words have and how many.

    2. we could do some combination of stuff that comes up with every possible combination of words from the letter given. 

TO DO
  - Gotta change the input so that it changes all words to the lower case. (Done)
  - I want to make an hash of the letters in my original word and how many of each letter (Done)
  - Now I need to make a hash letter count of each word of the same length to compare with original word hash. (Done)

  - I'm aware we could just do a loop and make a dictionary of each word in the dictionary to compare to our original word hash but I thought this would be more efficient in terms of computer processing. 
=end

# Opening our dictionary file for reference.
file = File.open("enable.txt", "r")
contents = file.read
dictionary = []
dictionary = contents.split

# Our Method.
def anagrams(original_word, dictionary)

  # Setting up some of our hashes, lower casing our original word, word length etc.
  original_letter_counter = Hash.new(0)
  original_word = original_word.downcase
  word_length = original_word.length
  anagram_words = []
  words_of_the_same_length = []

  # Filling up an array with all the words from the dictionary that are of the same length as our original word.
  dictionary.each { |dictionary_word|
    if dictionary_word.length == word_length
      words_of_the_same_length << dictionary_word
    end
  }

  # Setting up a hash that takes the letters in our original word as keys and then the letter count in that word as the value.
  original_word.split('').each { |original_letter|
    original_letter_counter[original_letter] += 1
  }

  # Making a hash as above for all the words that are of the same length. If that hash is the same as the original word hash, and the same_length_word deosn't equal the original word, we add that into our anagrams array.
  words_of_the_same_length.each { |same_length_word|
    same_length_letter_counter = Hash.new(0)
    same_length_word.split('').each { |same_length_letter|
      same_length_letter_counter[same_length_letter] += 1
    }
    if same_length_letter_counter == original_letter_counter && same_length_word != original_word
      anagram_words << same_length_word
    end
  }

  # If there are no anagrams, this will return a message instead of an empty array. 
  if anagram_words.empty?
    anagram_words = "No Anagrams Sorry"
  end

  anagram_words
end

puts anagrams("daniel", dictionary)


