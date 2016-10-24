def anagrams(string)

  letters_array = string.split('')
  possible_anagrams_array = generate_anagrams(letters_array)
  real_anagrams_array = []

  possible_anagrams_array.each do |word|
    if File.readlines("dictionary.txt").grep(/^#{word}$/).size > 0
      real_anagrams_array << word
    end
  end

  real_anagrams_array.delete(string)
  p real_anagrams_array.sort

end

def generate_anagrams(letters_array)

  permutations = letters_array.permutation.to_a
  possible_anagrams_array = permutations.collect { |letters| letters.join('')}
  return possible_anagrams_array

end

puts "Enter your anagram subject."
string = gets.chomp

anagrams(string)