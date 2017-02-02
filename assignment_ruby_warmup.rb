def roll_dice(dice_number = 1)
  count = 0

  dice_number.times do
    roll = rand(6) + 1
    count += roll
  end

  return count
end

def dice_outcomes(dice_number, rolls)
  roll_outcomes = {}

  i = 1

  while i <= (dice_number * 6)
    roll_outcomes[i] = 0
    i += 1
  end

  rolls.times do
    roll = roll_dice(dice_number)
    roll_outcomes[roll] += 1
  end

  roll_outcomes.each do |outcome, count|
    print "#{outcome}: "
    puts "#" * count
  end

  return roll_outcomes
end

def fibonacci_number(num)
  if num == 1 || num == 2
    return 1
  end

  return (fibonacci_number(num - 1) + fibonacci_number(num - 2))
end

def fibonacci(num)
  fibonacci_numbers = []

  i = 1
  while i <= num
    fibonacci_numbers.push(fibonacci_number(i))
    i += 1
  end

  fibonacci_numbers = fibonacci_numbers.join(', ')
  puts fibonacci_numbers
end