# Write a method anagrams which returns an array of anagrams that can be made with the specified string. Assume the input is only a single word (e.g. "loot" not "William Shakespeare").

def anagrams(string)
  sorted_array = string.split('').sort
  anagrams = []
  IO.foreach("enable.txt") do |word|
    if sorted_array == word.chomp!.split('').sort && string != word
      anagrams << word
    end
  end
  anagrams

end

puts anagrams("pears").inspect
puts anagrams("zygote").inspect
puts anagrams("loot").inspect