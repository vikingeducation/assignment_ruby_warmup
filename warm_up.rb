def roll_dice(die=1)
  dice_count = 0
  die.times do
    dice_count += rand(1..6)
  end
  dice_count
end


def dice_outcomes(number_of_dice, rolls)
  scores = Hash.new(0)
  #roll the dice - iterate times 'rolls'
  rolls.times do
    #add score to hash
    current_roll = roll_dice(number_of_dice)
    scores[current_roll] += 1
  end

  #sort hash
  sorted_scores = scores.sort.to_h

  #output chart
  sorted_scores.each do |score, frequency|
    puts "#{score.to_s.ljust(2)}: #{"#" * frequency}"
  end
end


def fibonacci(number)
  if number < 1
    return  "Please enter a number greater than zero"
  elsif number == 1
    return [1]
  else
    sequence = [0, 1]
    counter = 2
    (number-1).times do
      sequence[counter] = sequence[counter-1] + sequence[counter-2]
      counter += 1
    end
    return sequence[1..-1]
  end
end


def stock_picker(day_range)
  best_picks = [(day_range[1]-day_range[0]), day_range[0], day_range[1]]
  day_range[0..-2].each_with_index do |buy_amount, buy_index|
    day_range[buy_index..-1].each_with_index do |sell_amount, sell_index|
      if sell_amount - buy_amount > best_picks[0]
        best_picks = [(sell_amount - buy_amount), buy_index, sell_index + buy_index]
      end
    end
  end
  best_picks
end



#script to create a yaml file from online dictionary
#this must be run first for anagrams() to function
require 'open-uri'
require 'yaml'
def read()
  url = "http://s3.amazonaws.com/viking_education/web_development/web_app_eng/enable.txt"
  library = Array.new([])
  open(url).each do |word|
    library << word.chomp #.gsub(/"'"/, "")
  end
  # create a yaml file to store the library hash
  writefile = File.open("library.yml", "w")
  writefile.puts library.to_yaml
  writefile.close
end

def anagrams(user_string)
  words = Array.new
  YAML.load_file("library.yml").each do |line|
    user_word = user_string.downcase
    word = line.chomp
    word_lenght = word.length
    word.split("").each_with_index do |letter, index|
      # If each letter is in user_string add to array
      if user_word.include? letter
        user_word = user_word.sub(letter, "")
      else
        break
      end

      if user_word == "" || index +1 == word.length
        words << word.upcase
      end
    end
  end
  # words
  words = words.select { |w| w.length == user_string.length}
  words.reject { |w| w == user_string}
end