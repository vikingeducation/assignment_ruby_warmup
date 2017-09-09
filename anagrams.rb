def local_anagrams(input)
  processed_input = input.downcase.chars.sort.join
  matches = []

  IO.foreach('enable.txt') do |word|
    word.strip!
    processed_word = word.downcase.chars.sort.join
    matches << word if (processed_word == processed_input) && (word != input)
  end

  if matches.length > 0
    puts "Anagrams for '#{input}' are:"
    puts matches
  else
    puts "Sorry, there are no anagrams for '#{input}'."
  end
end

local_anagrams('spear')

#=======================================

require 'open-uri'

def cloud_anagrams(input)
  puts "Fetching your anagram data from the web..."

  web_dictionary = open('http://s3.amazonaws.com/viking_education/web_development/web_app_eng/enable.txt') {|f| f = f.readlines}

  processed_input = input.downcase.chars.sort.join
  matches = []

  web_dictionary.each do |word|
    word.strip!
    processed_word = word.downcase.chars.sort.join
    matches << word if (processed_word == processed_input) && (word != input)
  end

  if matches.length > 0
    puts "Anagrams for '#{input}' are:"
    puts matches
  else
    puts "Sorry, there are no anagrams for '#{input}'."
  end
end

cloud_anagrams('pears')