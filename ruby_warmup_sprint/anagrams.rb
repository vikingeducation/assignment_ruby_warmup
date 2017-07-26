def anagrams(word)
    word_arr = word.chars
    comb_arr = word_arr.permutation.to_a
    anagram_arr = []
    valid_anagrams = []
    comb_arr.each do |item|
        anagram_arr.push(item.join(""))
    end
    word_dictionary = []
    file = "enable.txt"
    File.readlines(file).each do |line|
        word_dictionary.push(line.chomp.to_s)
    end
    #print(word_dictionary)
    anagram_arr.each do |each_word|
        if word_dictionary.include?(each_word)
            valid_anagrams.push(each_word)
        end
    end
    valid_anagrams = valid_anagrams.reject{|any| any == word}
    valid_anagrams
end

print(anagrams("pears"))
#["pears", "pares", "parse", "presa", "prase", "apers", "apres", "asper", "reaps", "rapes", "spear", "spare"]
