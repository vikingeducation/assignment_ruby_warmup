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

def stock_picker(stock_prices)
  best_buying_day = 0
  best_selling_day = 0
  best_profit = 0
  last_selling_day = stock_prices.length - 1

  stock_prices.each_with_index do |price_on_day, buying_day|
    first_selling_day = buying_day + 1
    first_selling_day.upto(last_selling_day) do |sell_day|
      if stock_prices[sell_day] - price_on_day >= best_profit
        best_buying_day = buying_day
        best_selling_day = sell_day
        best_profit = stock_prices[sell_day] - price_on_day
      end
    end
  end

  [best_buying_day, best_selling_day]
end
