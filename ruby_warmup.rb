def roll_dice(number_of_dice=1)
  sum = 0
  number_of_dice.times do
    sum += (1+rand(6))
  end
  return sum
end

def dice_outcomes(number_of_dice, number_of_rolls)
  #build hash of all possible values
  outcomes = {}
  (number_of_dice..number_of_dice*6).each do |i|
    outcomes[i] = 0
  end

  #roll dice the specified number of times and store in hash
  number_of_rolls.times do
    roll = roll_dice(number_of_dice)
    outcomes[roll] = outcomes[roll]+1
  end

  #output hash as formatted histogram
  outcomes.each do |roll, tally|
    puts "#{roll.to_s.ljust(2)}:  " + "#"*tally
  end
end

def fibonacci(number_of_terms)
  sequence = []
  (1..number_of_terms).each do |i|
    if sequence.length == 0
      sequence[0] = 1
    elsif sequence.length == 1
      sequence[1] = 1
    else
      sequence[i-1] = sequence[i-2] + sequence[i-3]
    end
  end
  return sequence
end

def stock_picker(prices)
  best_profit = {profit: 0, buy: 1, sell: 1}

  prices.each_with_index do |buy_price, buy_day|
    (buy_day+1...prices.length).each do |sell_day|
      difference = prices[sell_day] - buy_price
      if difference > best_profit[:profit]
        best_profit[:profit] = difference
        best_profit[:buy] = buy_day
        best_profit[:sell] = sell_day
      end
    end
  end
  return[best_profit[:buy],best_profit[:sell]]
end

def anagrams(word)
  sorted_dictionary = Hash.new{Array.new}

  #load dictionary into a hash, sorted by alphabetical array of characters
  File.open("enable.txt").readlines.each do |line|
    sorted_dictionary[line.chomp.chars.sort.join] = sorted_dictionary[line.chomp.chars.sort.join] += [line.chomp]
  end

  #lookup array for input word, remove it, and return
  anagrams = sorted_dictionary[word.downcase.chars.sort.join]
  anagrams.delete(word)
  return anagrams
end
