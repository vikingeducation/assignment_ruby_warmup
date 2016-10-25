
def anagrams(input)
  array = input.split('')
  collection = []
  permutations(array.length, array, collection)
  collection.map! { |array| array.join('') }
  dictionary = []
  File.open("enable.txt") do |file|
    file.each_line do |line|
      dictionary.push(line.chomp)
    end
  end
  output = []
  collection.each do |permutation|
    output.push(permutation) if dictionary.include? permutation
  end
  output = output - [input]
  print output.to_s + "\n"
end

def permutations(n, array, collection) # by Heap's algorithm
  if n == 1 then
    collection.push(array.dup)
  else
    i = 0
    loop do
      permutations(n-1, array, collection)
      break if i == n-1
      if n.even? then
        array[i], array[n-1] = array[n-1], array[i]
      else
        array[0], array[n-1] = array[n-1], array[0]
      end
      i += 1
    end
  end
end

anagrams("pears")
anagrams("zygote")
