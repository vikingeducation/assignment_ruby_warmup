def anagrams(word, arr)
    arr.delete_if {|str| word.length != str.length}
    result = []
    
    arr.each do |str|
        result << str if word.split('').sort == str.split('').sort
    end
    p result
end
