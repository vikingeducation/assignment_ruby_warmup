def roll_dice(n=1)
  dice = []
  n.times do
    dice << rand(1..6)
  end
  return dice.inject(0){|sum,x| sum + x }
end


def dice_outcomes(dice=1,rolls=1)
  outcomes = {}
  rolls.times do
    this_roll = roll_dice(dice)
    if outcomes[this_roll]
      outcomes[this_roll] += "#"
    else
      outcomes[this_roll] = "#"
    end
  end
  outcomes.each do |key, value|
    puts "#{key}:  #{value.rjust(1-key.to_s.length)}"
  end
end


def fibonacci(sequence)
  fib = [1]
  i = 1
  counter = 1
  (sequence-1).times do
    fib << i
    i += fib[counter-1]
    counter += 1
  end
  return fib
end

def stock_picker(prices=[])
  buy = 0
  sell = 1
  best_profit = 0
  profit = 0
  buy_date = 0
  sell_date = 0
  prices.size.times do
    sell = buy + 1
    while sell<prices.size do
      profit = prices[sell]-prices[buy]
      if profit > best_profit
        best_profit = prices[sell] - prices[buy]
        buy_date = buy
        sell_date = sell
      end
      sell += 1
    end
    buy += 1
  end
  return "#{buy_date}, #{sell_date}"
end

def anagrams(word="loot")
# Don't know why this isn't working, will check solution
  dictionary = File.readlines("enable.txt")
  result = []
# Sort the characters of the input word alphabetically
word_characters = word.chars.sort.join
# Use a loop to check each dictionary entry for a match
dictionary.each do |x|
  dict_characters = x.chars.sort.join
  if dict_characters == word_characters
    result.push(x)
  end
end

puts result
# Return anagrams
if result == []
  puts "Sorry! No #{word.length}-letter anagrams found."
else
  puts "Anagrams of '#{word}':"
  puts result
end
end
