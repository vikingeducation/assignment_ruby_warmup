def roll_dice n=1
  rand((1 * n)..(6 * n))
end

def dice_outcomes num_of_dice, num_of_rolls
  outcomes = {}
  num_of_rolls.times do
    outcome = roll_dice num_of_dice
    outcomes[outcome] ? outcomes[outcome] += 1 : outcomes[outcome] = 1
  end
  outcomes.sort.each{|key, value| puts "#{key}:\t #{'#' * value}"}
end

def fib_recur num_of_terms
  return [0, 1] if num_of_terms == 1
  return (fib_recur (num_of_terms - 1)).push((fib_recur (num_of_terms - 1))[-2..-1].reduce(:+))
end

def fibonacci num_of_terms
  (fib_recur num_of_terms)[1..-1]
end

def stock_picker stock_prices_by_day
  best_days = [0, 0]
  stock_prices_by_day.each_with_index do |buy_price, buy_day|
    stock_prices_by_day.each_with_index do |sell_price, sell_day|
      next if buy_day >= sell_day
      best_buy_day = stock_prices_by_day[best_days[0]]
      best_sell_day = stock_prices_by_day[best_days[1]]
      if (sell_price - buy_price) > (best_sell_day - best_buy_day)
        best_days = [buy_day, sell_day]
      end
    end
  end
  best_days
end

def anagrams word
  dictionary = IO.readlines("enable.txt").map{|enable_word| enable_word.chomp }
  permutations = word.split('').permutation.to_a.map{ |array| array.join('') }
  permutations.select{ |some_word| dictionary.include?(some_word) } - [word]
end
