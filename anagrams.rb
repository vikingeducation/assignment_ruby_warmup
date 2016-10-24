def anagrams(string)

  combo_arr = []
  final_arr = []
  dictionary = []
  
  arr = string.split("").permutation.to_a
  arr.each do |combo|
    combo_arr.push(combo.join)
  end

  File.open("enable.txt").readlines.each do |text|
    dictionary.push(text.chomp)
  end
  
  final_arr = dictionary & combo_arr 
  pop_spot = final_arr.index(string)
  final_arr.delete_at(pop_spot)
  puts final_arr

end

anagrams("pears")