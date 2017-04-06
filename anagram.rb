#!/usr/bin/ruby

def anagram(word)
  split_word = word.split(//)

  File.open("enable.txt").each do |line|
    split_line = line.chomp.split(//)
    if split_word.sort == split_line.sort && line.chomp != word
      puts "#{line.chomp}"
    end
  end
end

anagram("bears")
