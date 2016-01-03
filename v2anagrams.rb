
  def anagram(word)
  letters = word.split('')

  return gen_anagram(letters)
end

def gen_anagram(letters)
  if letters.length <=1
    return letters
  else 
    result = Array.new
    letters.each.with_index do |v, i| 
      other_letters = letters[0...i].concat(letters[i+1...letters.length])
      result.concat(gen_anagram(other_letters).map { |str| v + str })
    end
    return result
  end
end
















/# Sam's old attempt
  def gen_anagram(array_of_word)
    if array_of_word.length <= 1
      print array_of_word
      return array_of_word
    end 
    anagrams = Array.new
    until i = original_word.length  
      ana_1=parsed_array[0]+parsed_array[i-1]+parsed_array[i]
      ana_2 = parsed_array[0]+parsed_array[i]+parsed_array[i-1]
      ana_3 = parsed_array[i-1]+parsed_array[0]+parsed_array[i]
      ana_4 = parsed_array[i-1]+parsed_array[i]+parsed_array[0]
      ana_5 = parsed_array[i]+parsed_array[i-1]+parsed_array[0]
      ana_6 = parsed_array[i]+parsed_array[0]+parsed_array[i-1]

      return anagram = [ana_1, ana_2, ana_3, ana_4, ana_5, ana_6]

      #sum the string from parsed array = 0 to parsed array at length
      end
      i+= 1
    end

      
def anagrams(original_word)
  i=0
  array_of_original = original_word.split("")
  print array_of_original
  parsed_array = original_word.delete(array_of_original.slice(i))
  print parsed_array

  all_anagrams = (array_of_original[i]) + gen_anagram(parsed_array)
  return all_anagrams
end


Check if anagrams are a 
def check_are_words(all_anagrams)
  anagrams_are_words = Array.new
  all_anagrams.each do |anagram|
     if enable.txt.include?'anagram'
      anagrams_are_words << anagram

    need to figure out how to call enable.txt #/




/# Writing out all possible variations.

'troy'

't' anagrams('roy')
  'roy'
  'r' anagrams('oy')
    'oy'
    'o' anagrams('y')
      'y'
    'y' anagrams('o')
      'o'
  'o' anagrams('ry')
    'r' anagrams('y')
      'y'
    'y' anagrams('r')
      'r'
  'y' anagrams('ro')
    'r' anagrams('o')
      'o'
    'o' anagrams('r')
      'r'
'r' anagrams('toy')
  'toy'
  't' anagrams('oy')
    'o' anagrams('y') #/


/# Now for a shorter word.
'cat'

anagrams('cat') -> ['cat', 'cta', 'act', 'atc', 'tca', 'tac']
anagrams('at') -> ['at', 'ta']
anagrams('ct') -> ['ct', 'tc']
anagrams('ca') -> ['ca', 'ac']
result = Array.new
result.concat(anagrams('at').map { |str| 'c' + str })
result.concat(anagrams('ct').map { |str| 'a' + str })
result.concat(anagrams('ca').map { |str| 't' + str })
return result
#/


