def anagrams(input_string)
    input_string = input_string.downcase
    dictionary = []
    anagrams = []
    input_hash = {}
    input_hash.default = 0
    is_anagram = false

    dictionary_source = File.open("enable.txt", "r")
    dictionary_source.each {|line| dictionary << line.strip}

    input_string.split("").each {|char| input_hash[char] += 1}

    dictionary = dictionary.select {|word| word.length == input_string.length}

    dictionary.each do |word|
        input_hash.each do |char, char_count|
            if char_count == word.count(char)
                is_anagram = true
            else
                is_anagram = false
                break
            end
        end
        if is_anagram
            anagrams << word unless word == input_string
        end
    end

    anagrams
end