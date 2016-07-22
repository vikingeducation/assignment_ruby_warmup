DICTIONARY = File.open('enable.txt').read

def anagrams(word)
  #if the word is the same length, it might be an anagram
  ana_candidates = []
  DICTIONARY.each_line do |candidate|
    if (candidate.length - 1) == word.length
      ana_candidates << candidate.gsub("\n",'')
    end
  end
  #if the potential candidate's sorted letters match the user's word's sorted letters, it's an anagram
  anagrams = []
  ana_candidates.each do |candidate|
    if candidate.chars.sort == word.chars.sort
      anagrams << candidate
    end
  end
  #words can't be anagrams of themselves, remove that
  anagrams.each do |matches|
    if matches == word
      anagrams.delete(matches)
    end
  end
  anagrams
end

p anagrams("pears")
p anagrams("zygote")