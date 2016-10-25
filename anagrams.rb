def anagrams(input)
  array = input.split('')
  permutations(array.length, array)
end

def permutations(n, array) # by Heap's algorithm
  if n == 1 then
    print array.to_s + "\n"
  else
    i = 0
    loop do
      permutations(n-1, array)
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
