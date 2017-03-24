#1 Rolling Dice
def roll_dice(dice_num=1)
  output = 0
  dice_num.times do
    output += (1..6).to_a.sample
  end
output
end
puts "#1 Rolling Dice:"
puts roll_dice(4)
puts roll_dice(2)
puts roll_dice


#2 Dice Outcomes
def dice_outcomes(num_dice, num_rolls)
  final_tally = Hash[(3..18).to_a.map {|x| [x, ""]}]
  roll_results = []
  num_rolls.times do
    roll_results.push roll_dice(num_dice)
  end
  #this cycles through all of the values and adds them to the respective keys
  final_tally.each do |key, value|
    hashtags = ""
    tally = roll_results.count(key)
    tally.times do
      hashtags += "#"
    end
    final_tally[key] = hashtags
    puts "#{key}: #{final_tally[key]}"
  end
 final_tally
end
puts
puts "#2 Dice Outcomes:"
dice_outcomes(3,100)

#3 Fibonacci
def fibonacci(members)
  sequence = [1, 1]
  (members - 2).times do
    sequence.push (sequence.last + sequence[-2])
  end
  puts sequence.to_s
end
puts
puts "#3 Fibonacci:"
fibonacci(7)


#4 Stock Picker
def stock_picker (ticker=[])
  output = []
  #need to find highest and lowest values
  days = (0..ticker.length).to_a
  highest_return = 0
  best_days = []
  best_buydate = 0
  best_selldate = 0
  maxoffset = days.length - 1
  days.each do |buydate|
    selldate = buydate + 1
    while selldate < maxoffset
      net = ticker[(selldate)] - ticker[buydate]
      if net > 0
      end
      if net > highest_return
        highest_return = net
        best_buydate = buydate
        best_selldate = selldate
      end
      selldate += 1
    end
  end
  best_days.push best_buydate
  best_days.push best_selldate
  puts "Buying on day #{best_buydate} at a cost of #{ticker[best_buydate]} and selling on #{best_selldate} at a cost of #{ticker[best_selldate]} yields a profit of #{highest_return}"
  puts "The highest return on investment is #{highest_return}"
  puts best_days.to_s
end

puts
puts "#4 Stock Picker:"
stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])

#5 Anagram Testing
def anagrams (input="")
  #GLobal Variables
  dic = ["APERS", "APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]
  candidates = []
  input_length = input.length
  outcomes_num = 1
  count = 0
  (1..input_length).to_a.each do |x|
    outcomes_num *= x
  end

  while candidates.length < outcomes_num
    neword = ""
    new_str = input.split("").shuffle
    new_str.each do |x|
      neword += x
    end
    unless candidates.include?(neword.upcase)
      candidates.push neword.upcase
      count += 1
      puts "#{count} #{neword.upcase}"
    end
  end

  output = dic & candidates
  puts output.to_s
end
puts
puts "#5 Anagram Testing:"
anagrams("dog")
# => ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]
