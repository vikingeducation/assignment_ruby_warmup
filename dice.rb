
def roll_dice(num_dice)
  sum_of_dice = 0
  die = [1, 2, 3, 4, 5, 6]
  num_dice.times do
    sum_of_dice += die.sample
  end
  return sum_of_dice
end

def dice_outcomes(num_dice, num_rolls)
  outcomes = {}
  num_rolls.times do
    dice_outcome = roll_dice(num_dice)
    outcomes[dice_outcome] ? outcomes[dice_outcome] = outcomes[dice_outcome] << '*' : outcomes[dice_outcome] = '*'
  end
  outcomes.sort.each do |num, repetitions|
    puts "#{num}: #{repetitions}"
  end
  return outcomes.sort
end

def fibonnaci(max_fib)
  fib_result = []
  first = 1
  second = 0
  max_fib.times do
    fib_result.push(first)
    first += second
    second = fib_result[-1]
  end
  return fib_result
end

def stock_picker(stock_prices)
  profit_calc = {}
  stock_prices.each_with_index do |_price, day|
    remain_days_prices = stock_prices[day..stock_prices.last]
    remain_days_prices.each_with_index do |_remain_price, remain_day|
      profit = remain_days_prices[remain_day] - stock_prices[day]
      profit_calc[profit] = [day, remain_day + day]
    end
  end
  return profit_calc[profit_calc.keys.max]
end

def anagram(input_word)
  anagrams = []
  valid_dictionary = IO.readlines('enable.txt')

  valid_dictionary.each do |word|
    word.chomp.chars.sort == input_word.chars.sort ? anagrams.push(word.chomp) : next
  end

  return anagrams
end
