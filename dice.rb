def roll_dice(num_of_dice = 1)
  num_of_dice = num_of_dice.to_i
  total = 0
  num_of_dice.times { total += rand(1..6) }
  total
end

def dice_outcomes(num_of_dice, times_to_roll)
  roll_chart = {}
  1.upto(num_of_dice * 6) { |i| roll_chart[i] = 0 }

  times_to_roll.times do
    num_rolled = roll_dice(num_of_dice)
    roll_chart[num_rolled] += 1
  end

  tot = 0
  roll_chart.each do |roll, times|
    puts "#{roll}: #{'#' * times}"
    tot += times
  end
end

def fib(n)
  current = 1
  prev = 0
  fib_nums = []
  n.times do
    fib_nums << current
    current += prev
    prev = current - prev
  end
  fib_nums
end
