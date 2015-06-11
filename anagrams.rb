f = File.open("dictionary.txt")

dict = f.read.split("\n")               #loading dictionary as an array


def anagrams(string, arr)



  sorted = string.split("").sort        #splitting the given string into its letters, then sorting it

  matches = []                          #anagrams will be stored in this array



  arr.length.times do |i|               #program will iterate over the dictionary, checking each item for a match
    if sorted == arr[i].split("").sort  #compares the sorted given string, with sorted items in dictionary.
      matches.push(arr[i])              #if the arrays match, they are anagrams and are added to matches array
    end
  end

  matches.length.times do |i|           #this loop removes the given word from matches array b/c a word is not its own anagram

    if matches[i] == string
      matches.delete_at(i)
    end

  end

  puts (matches)                        #print all the anagrams

end


anagrams("tesla", dict)
