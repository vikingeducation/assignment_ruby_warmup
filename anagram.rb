# We'll globally define a list of words, here using enable.txt
def generate_words
  words = []

  File.open('enable.txt').each do |line|
    new_line = line
    # We don't care for the new line character, it will only trip us up.
    new_line = new_line.delete("\n")
    words << new_line
  end

  return words
end

WORDS = generate_words

# Technically we can make this a oneliner but that'd be really hard to read.
def anagrams(string)
  # We take a string, split it into its characters, 
  # put those characters in an array, get all permuations of the array,
  # and join each permutation into words.
  permutations = string.chars.to_a.permutation.map(&:join)

  # Then we select only permutations that are words, but not our starting word.
  permutations = permutations.select {|value| value != string and WORDS.include? value }

  return permutations
end

# Looks cool, less cool to decipher.
def anagrams_oneliner(string)
  string.chars.to_a.permutation.map(&:join).select {|value| value != string and WORDS.include? value}
end

puts "#{anagrams("pears").sort}"
puts  "#{anagrams_oneliner("pears").sort}"

puts "#{anagrams("zygote").sort}"
puts "#{anagrams_oneliner("zygote").sort}"

