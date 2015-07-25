input = "pears"

def anagrams(orig_word)
  # array returned containing all anagrams
  anagram_array = []

  # check each word against original word to see if it's an anagram
  File.open('enable.txt').each_line do |line|

    # word is an anagram if letters of input and word in 'enable.txt' are the same when sorted
    if line.chomp.chars.sort.join == orig_word.chars.sort.join
      #push anagram into the return array
      anagram_array.push(line.chomp.upcase) 
    end
  end

  # remove original word from array
  anagram_array.delete(orig_word.upcase)

  # print array
  print anagram_array.to_s + "\n"
end

anagrams(input)
