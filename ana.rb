# ana.rb

def anagrams(test_word = '')
  words = Hash.new([])
  IO.foreach('enable.txt') do |line|
    word = line.chomp
    words[word.split('').sort!.join('')] += [word]
  end
  sorted_anagram = test_word.split('').sort!.join('')
  result = words[sorted_anagram]
  result - [test_word]
end

# anagrams('pears')
# anagrams('zygote')
