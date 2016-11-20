def anagrams(string)

  puts string.split("").permutation.map(&:join).uniq.sort


end


anagrams("tingting")