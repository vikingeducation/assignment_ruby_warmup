def roll_dice(num_dice=1)

  total = 0
  r = Random.new

  num_dice.times do
    roll_val = r.rand(1..6)
    total += roll_val
  end

return total
end


def dice_outcomes(num_dice=1, num_rolls=1)

  chart = Hash.new
  r = Random.new(0)
  sum_of_dice = 0
  pads = ""

  #create hash of frequency for each sum_of_dice
  num_rolls.times do
    sum_of_dice = roll_dice(num_dice)
    chart[sum_of_dice] = chart[sum_of_dice].to_i + 1
    sum_of_dice = 0
  end

  chart = chart.sort_by { |k, v| k }

  largest_key_size = chart.max_by { |k, v| k }
  pads = largest_key_size[0].to_s

  chart.each do |key, value|
    print "#{key}: ".rjust(pads.length + 2)
    value.times{ print "#" }
    print "\n"
  end

end


def fibonacci(fib_length)

  current_num = 1
  previous_num = 0
  next_num = 2
  fib_nums = []

  fib_length.times do
    fib_nums.push(previous_num + current_num)
    previous_num = current_num
    current_num = next_num
    next_num = previous_num + current_num
  end

  fib_nums
end


def stock_picker(prices)

  profit = 0
  max_profit = 0
  low_day = 0
  high_day = 0

  prices.each_with_index do |buy, buy_day|
    prices.each_with_index do |sell, sell_day|

      if sell_day > buy_day
        profit = sell - buy
        max_profit, low_day, high_day = profit, buy_day, sell_day if max_profit < profit
      end

    end
  end

  puts "Buy on #{low_day}, sell on #{high_day} for a profit of #{max_profit}."
end


def anagram(word)
  anagrams = []
  input_chars = word.split("").sort

  File.open("dictionary.txt").each do |line|
    dict_chars = line.chop.split("").sort
    anagrams.push(line.chop) if input_chars == dict_chars
  end

  anagrams.delete(word)
  puts "Anagrams of 'pears': #{anagrams.to_s}"
end


puts "roll_dice...."
p roll_dice(6)
puts "\n\n"

puts "dice_outcomes...."
dice_outcomes(3, 100)
puts "\n\n"

puts "fibonacci...."
p fibonacci(15)
puts "\n\n"

puts "stock_picker...."
stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
puts "\n\n"

puts "anagram...."
anagram("pears")
puts "\n"
