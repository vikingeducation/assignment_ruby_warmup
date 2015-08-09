#Ruby Practice

#Roll a die n times and get the sum of the rolls
def roll_dice(n=1)
  sum = 0
  n.times do
    sum += rand(1..6)
  end

  return sum
end


#Takes the number of dice to roll and the number of times to roll them,
#then outputs a visual chart of how many times each possible number comes up
def dice_outcomes(num_dice, num_rolls)
  #initializing array with 
  #space: max roll possible given number of die
  #value: 0 since the count starts at 0 for each outcome
  outcomes = Array.new(num_dice*6 + 1, 0)

  #for the number of rolls specified, we will roll the number of die
  #and keep track of each outcome in our array
  num_rolls.times do
    outcomes[roll_dice(num_dice)] += 1
  end

  #printing out the results
  outcomes.each_with_index do |times_rolled, outcome|
    print "#{outcome}:".ljust(4)
    times_rolled.times do
      print "#"
    end
    print "\n"
  end
end

#Same function as above but using a hash instead of an array
def dice_outcomes_hash(num_dice, num_rolls)
  #initializing a hash with the min and max rolls possible
  outcomes = {}

  #populating the hash with keys
  range = Array (num_dice..(num_dice*6)) #min and max
  range.each do |key|
    outcomes[key] = 0
  end

  #roll the dice num_rolls times and record the count
  num_rolls.times do
    outcome = roll_dice(num_dice)
    outcomes[outcome] += 1
  end

  #printing results to the screen
  outcomes.each do |outcome, count|
    print "#{outcome}:".ljust(4)
    count.times do
      print "#"
    end

    print "\n"
  end
end

#Fibonacci to the nth term
def fibonacci(n)
  sequence = []
  sequence[0] = 1
  sequence[1] = 1

  i = 1
  (n-2).times do #we are starting at the 3rd iteration since we already have the first and second terms
    next_num = sequence[i] + sequence[i-1]
    sequence[i+1] = next_num
    i += 1
  end

  return sequence
end

#Stock Picker
#Takes an array of stock prices (each index refers day0, day1, etc.) and outputs the most profitable pair of days
#on which to first buy the stock and then sell the stock
def stock_picker(prices)
  if !prices.is_a?(Array)
    puts "This function only accepts an array as a parameter"
    return
  end

  # min_price = 9999;
  # max_price = -9999;
  max_profit = -9999;
  min_buy_day = nil;
  max_sell_day = nil;

  prices.each_with_index do |buy_price, buy_day|
    prices[(buy_day+1)..-1].each_with_index do |sell_price, sell_day|
      profit = sell_price - buy_price
      if profit>max_profit
        max_profit = profit
        min_buy_day = buy_day
        max_sell_day = sell_day+(buy_day+1) #this is because the sell day is behind by buy_day due to our array declaration prices[(buy_day+1)..-1]
      end
    end
  end
    
  return "[#{min_buy_day}, #{max_sell_day}]"
end

#Anagram Testing
#returns an array of anagrams that can be made with one word
def anagram(word)
  word_list = {}
  File.open("dictionary.txt") do |file|
    file.each do |line|
      sorted_word = line.strip.chars.sort.join
      (word_list[sorted_word] ||= []) << line.strip.upcase 
    end
  end

  return word_list[word.chars.sort.join]
end

  





