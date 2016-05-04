def roll_dice(rolls = 1)
  sum = 0

  rolls.times do
    sum += rand(6) + 1
  end

  sum
end

def dice_outcomes(number_of_dice, times_to_roll)
  outcomes = {}

  #roll the dice!
  times_to_roll.times do
    result = roll_dice(number_of_dice)
    outcomes[result] ? outcomes[result] += 1 : outcomes[result] = 1 
  end

  #output a graph by building a line for each possible result
  (number_of_dice..number_of_dice*6).each do |roll_result|
    result_graph_line = "#{roll_result}: ".ljust(4)
    if outcomes[roll_result]
      outcomes[roll_result].times { result_graph_line << "\#" }
      puts result_graph_line
    end
  end
end

def fibonacci(elements)
  sequence = [1, 1]

  #edge cases
  if elements < 1
    puts "Please enter a number greater than 0."
    return nil
  elsif elements == 1
    return [1].to_s
  end

  2.upto(elements-1) do |index|
    sequence << sequence[-1] + sequence[-2]
  end

  sequence.to_s
end

def stock_picker(prices)
  best_days = []
  best_profit = 0

  prices.each_index do |current_day|
    (current_day+1).upto(prices.size-1) do |future_day|
      if prices[future_day] - prices[current_day] > best_profit
        best_profit = prices[future_day] - prices[current_day]
        best_days = [current_day, future_day]
      end
    end
  end

  best_days.to_s
end

def anagrams(word)
  anagram_words = []

  dictionary_file = File.new("enable.txt", "r") if File::exists?( "enable.txt" )
    # build our dictionary array
    dictionary = dictionary_file.readlines
  dictionary_file.close

  #take off the new line characters of all the dictionary words.
  dictionary.each_index do |current_word|
    dictionary[current_word]=dictionary[current_word].chomp
  end

  #make an array of characters
  word = word.downcase
  characters = word.split("")

  #using recursion, make each possible combination
  possibilities = find_combinations(characters)

  #check to see if the combination is in our dictionary (minus the word itself)
  return possibilities & dictionary - [word]
end

def find_combinations(elements)
  combination_list = []

  elements.each_index do |current_element|

    if elements.size > 1
      #send the next recursive iteration an array of everything but the current element
      remainder = find_combinations(elements[0...current_element] + elements[current_element+1..-1])

      #then add all those combinations to our current element
      remainder.each do |remainder_elements|
        combination_list << elements[current_element] + remainder_elements
      end
    else
      #it's our last stop
      combination_list = elements
    end
  end

  combination_list
end

puts anagrams("PEarS").to_s
puts anagrams("viking").to_s