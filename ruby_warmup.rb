def roll_dice(num_dice = 1)
  dice = (1..6).to_a
  result = 0

  num_dice.times { result += dice.sample }

  result
end

def dice_outcomes(num_dice, num_rolls)
  result = {}

  num_rolls.times do
    current_roll = roll_dice(num_dice)
    if result.has_key?(current_roll)
      result[current_roll] += 1
    else
      result[current_roll] = 1
    end
  end

  result.keys.sort.each do |key|
    puts "#{key}".ljust(2) + ": " + "#{"#" * result[key]}"
  end
  
  result
end

def fib(number)
  return 1 if number == 1 || number == 2

  return fib(number - 1) + fib(number - 2)
end

def fibonacci(num_members)
  result = []
  1.upto(num_members) { |member| result << fib(member) }

  result
end
