def in_dictionary? str
  File.read("enable.txt").split("\n").include? str
end

class String
  def all_possible_combinations
    self.chars.to_a.permutation.map(&:join)
  end
end


def anagram_bad input_word
  result = []
  input_word.all_possible_combinations.each do |word|
    result << word if (in_dictionary? word) && (word != input_word)
  end
  result.sort
end

def anagram(str)
  # load dictionary
  dict = File.readlines("enable.txt").map{ |l| l.strip.upcase }

  # check for anagrams
  anagrams = []
  str.upcase!
  dict.each do |word|
    next unless word.length == str.length
    next if word == str
    anagrams << word if word.chars.sort.join == str.chars.sort.join
  end

  anagrams
end
