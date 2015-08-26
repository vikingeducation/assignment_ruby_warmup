#returns array of anagrams that can be made
#with input string
def anagrams(word)
  #dictionary file I/O
  file = File.open("enable.txt","r")
  dictionary = file.readlines
  file.close

  #save anagrams here

  #obtain ordered chars and word length
  char_set = word.chars.sort.join
  char_count = word.length

  #obtain all the dictionary words of proper length
  proper_words = dictionary.select do |e|
    #NEWLINE COUNTS AS CHARACTER USE CHOMPS
    #GETS RID OF \n AT END OF EACH DICTIONARY ENTRY
    e.chomp.length == char_count
  end

  #remove all newline chars
  proper_words = proper_words.map do |e|
    e.chomp
  end

  #iterate through the proper word lengths for anagrams
  anagram = proper_words.select do |x|
    x.chars.sort.join == char_set
  end

  #remove the input word
  anagram.delete(word)

  #print solution
  puts anagram.inspect
end

#anagrams method test
/anagrams("pears")/