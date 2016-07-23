def in_dictionary? str
  File.read("enable.txt").split("\n").include? str
end

class String
  def all_possible_combinations
    self.chars.to_a.permutation.map(&:join)
  end
end


def anagram input_word
  result = []
  input_word.all_possible_combinations.each do |word|
    result << word if (in_dictionary? word) && (word != input_word)
  end
  result.sort
end
