##rite a method anagrams which returns an array of anagrams that can be made with the specified string. Assume the input is only a single word (e.g. "loot" not "William Shakespeare").


def anagram(word)
  word_list = word.split("")
  anagram_list = []

  File.open('dict.txt', 'r') do |f1|  
    while line = f1.gets
    newline = line.chomp.split("").sort 
      if newline == word_list.sort
        anagram_list.push(line)
      end
    end
  end
  anagram_list.reject! {|item| item.strip == word.strip}
  #puts anagram_list 
  return anagram_list
end

anagram("pears") #anagrams should be returned
anagram("zygote") #no anagrams should be returned
anagram("wisp") #no anagrams should be returned even though it exists in the list
anagram("dog") #should give just dog