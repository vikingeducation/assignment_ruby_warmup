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




