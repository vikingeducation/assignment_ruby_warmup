# Rolling Dice
def roll_dice(number_of_dice = 1)
  # Initialize return sum to 0
  sum = 0

  # Rolling "num" dice (count) once <=> Rolling a dice num times
  number_of_dice.times do |n|
    sum += rand(1..6)
  end

  # Returning the sum of all rolls
  return sum
end

# Rolling Dice test
p roll_dice(4)
p roll_dice(2)
p roll_dice
puts "---------------"

# Helper Method
def print_hash(num)
  str = ""
  num.times { str = str+"#"}
  return str
end

# Rolling Dice Outcomes
def dice_outcomes(number_of_dice, attempts)
  # initializing outcome hash
  outcome = {}
  (3..18).each { |n| outcome[n] = 0 }

  attempts.times do
    sum = roll_dice(number_of_dice)
    outcome[sum] += 1
  end

  # Printing the outcome visually
  outcome.each do |k, v|
    str = "#{k}: ".ljust(4)+ print_hash(v)
    puts str
  end

  # Returning the outcome
  return outcome
end

# dice_outcomes test
p dice_outcomes(3,100)
puts "---------------"


# Fibonacci
def nth_fibonacci_number(num)
  return 1 if (num == 1 || num == 2)
  nth_fibonacci_number(num-1) + nth_fibonacci_number(num-2)
end

def fibonacci(num)
  fib_series = []
  (1..num).each { |n| fib_series << nth_fibonacci_number(n) }
  fib_series
end

# Fibonacci test
p fibonacci(7)
puts "---------------"

#Stock Picker
def stock_picker(price_array)
  max_profit = { value: 0, buy_day: 0, sell_day: 0};

  price_array.each_with_index do |n, i|
    j = i+1
    while (j < price_array.size)
      cur_profit = price_array[j] - price_array[i]
      if max_profit[:value] < cur_profit
        max_profit[:value] = cur_profit
        max_profit[:buy_day] = i
        max_profit[:sell_day] = j
      end
      j += 1
      end
    end
  return [max_profit[:buy_day], max_profit[:sell_day]]
end
# Stock picker test
p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])

#Anagrams
def anagrams(string)
  # Init dictionary
  dictionary = {}
  File.readlines("enable.txt").each_with_index do |line, line_num|
    dictionary[line.chomp] = true
  end

  # Convert string to array of char, so we can use array's powerful methods
  arr = string.split("")
  # Get all permutations of the string
  arr = arr.permutation(arr.size).to_a.map { |item| item.join }
  # Select only valid words
  arr.select! { |item| dictionary[item] == true }
  # Remove the string provided
  arr - [string]
end

p anagrams("pears")
p anagrams("zygote")
