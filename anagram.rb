# Write a method, anagrams, which returns an array of anagrams that can be made with the specified string.
# Assume the input is only a single word (e.g. "loot" not "William Shakespeare").

def anagrams(user_word)
  result = []
  letters = user_word.split("").sort
  dictionary = File.readlines("enable.txt").map { |word| word.chomp }

  dictionary.each do |word|
    if word.split("").sort == letters
      result << word
    end
  end
  result
end

puts anagrams('pears')
