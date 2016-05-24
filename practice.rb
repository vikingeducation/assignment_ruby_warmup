# Rolling Dice
def roll_dice (time = 1, result = 0)
  time.times do
    result += rand(1..6)
  end
  puts result
end

roll_dice(4)
roll_dice(2)
roll_dice

# Rolling Dice Outcomes
def dice_outcomes (dice, time)
  result_hash = Hash.new(0)
  time.times do
    result_hash[rand(dice..6*dice)] += 1
  end
  result_hash = result_hash.sort_by { |k, v| k }
  result_hash.to_h.each do |h, v|
    puts "#{h}: #{'#'*v}"
  end
  return result_hash
end

dice_outcomes(3,100)

# Fibonacci
def fibonacci (max_len, num1 = 1, num2 = 1)
  result_array = Array.new
  while result_array.length < max_len do
    result_array << num1
    temp = num1
    num1 = num2
    num2 = temp + num2
  end
  print result_array
end

fibonacci(7)

# Stock Picker
def stock_picker(arr)
  gap = 0
  result_a = []
  arr.each_with_index do |p, i|
    arr[i+1..arr.length-1].each_with_index do |pp, ii|
      if pp - p > gap
        gap = pp - p
        result_a = []
        result_a << i << ii + i + 1
      end
    end
  end
  puts ""
  print result_a
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])



