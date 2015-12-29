# Rolling Dice

def single_roll
  (1..6).to_a.sample
end

def roll_dice(number_of_dice=1)
  total_score = 0
  number_of_dice.times do |number_of_dice|
    total_score += single_roll
  end
  return total_score
end


# Rolling Dice Outcomes

# number_of_dice: how many dice you're rolling each time
# number_of_rolls: how many times you roll all dice
# return: list of all possible totals with the number of occurrences shown as a # sign

# example: 
# rolling_dice(3, 100)
#   3: #
#   4: ###
#   5: #####
#   6: ....
#   18: ##

# step 1, make_outcomes: create a hash of all possible totals, min = number_of_dice, max = number_of_dice * 6
def make_outcomes(number_of_dice)
  outcomes = {}
  dice_array = (number_of_dice..(number_of_dice*6)).to_a
  dice_array.each do |total|
    outcomes[total] = ""
  end
  return outcomes
end

# step 2: run single_roll function number_of_rolls times; each time it runs, add a # to the value whose key matches the total
def rolling_dice_outcomes(number_of_dice, number_of_rolls)
  outcomes = make_outcomes(number_of_dice)
  i = 0
  while i < number_of_rolls
    single_roll = roll_dice(number_of_dice)
    outcomes[single_roll] += "#"
    i += 1
  end
  return outcomes
end



# Fibonacci

def fibonacci(n)
  # Fn = Fn-1 + Fn-2 
  # ^^^ with seed values F1 = 1, F2 = 1
  sequence = [1]
  (n-1).times do
    current_number, last_number = sequence.last(2)
    sequence << current_number + (last_number or 0)
  end
  return sequence
end



# Stock picker
  # input: an array of stock prices
  # output: the most profitable days to buy and sell the stock
  # example:
  # > stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
  #=> [2, 6]

def stock_picker(days)
  buy_day = 0
  maximum = 0
  best_days = []

  while buy_day <= days.length
    buy_price = days[buy_day]

    (buy_day..days.length-2).each do |possible_sell_day|
      sell_price = days[possible_sell_day+1]
      profit = sell_price - buy_price

      if profit > maximum
        maximum = profit
        best_days = buy_day, possible_sell_day+1
      end
    end
    buy_day += 1
  end
  return best_days
end