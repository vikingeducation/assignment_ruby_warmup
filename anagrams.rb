

def anagrams(word)
  str_array = []
  results = []

  #read file into array
  dic_array = File.readlines('enable.txt')

  #create permuted array
  word = word.downcase
  arr = word.chars.permutation.to_a
  arr.each { |element| str_array << element.join }

  #loop thru arrays
  str_array.each do |test_word|
    dic_array.each do |dic_word|
      results << test_word if test_word.strip.to_s == dic_word.strip.to_s
    end
  end
  results.delete(word) #remove base word from results
  puts results.sort.upcase
end

anagrams('pears')
anagrams('zygote')
