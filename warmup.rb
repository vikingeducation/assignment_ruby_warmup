require 'pry'


def roll_dice(number_of_dice=1)
  faces = [1,2,3,4,5,6]
  total = 0

  number_of_dice.times { total = total + faces.sample }

  return total
end


def dice_outcomes(number_of_dice, number_of_rolls)
  possible_outcomes = (number_of_dice..(number_of_dice * 6)).to_a
  outcome = 0
  results = Hash.new(0)

  number_of_rolls.times do
    outcome = possible_outcomes.sample
    results[outcome] += 1
  end

  results.sort.each do |outcome, count|
    count = "#" * count
    puts "#{outcome}: #{count}"
  end
end


def fibonacci(number)
  fibonacci_numbers = [1, 1]

  if number == 1
    fibonacci_numbers = [1]
  elsif number == 2
    fibonacci_numbers = [1, 1]
  else
    (2..number-1).each { |i| fibonacci_numbers << fibonacci_numbers[i-2] + fibonacci_numbers[i-1] }
  end

  return fibonacci_numbers
end


def stock_picker(prices=[])
  buy_sell_days = []
  buy_stock = nil
  sell_stock = nil

  difference = prices[1] - prices[0]

  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        if sell_price - buy_price > difference
          difference = sell_price - buy_price
          buy_stock = buy_day
          sell_stock = sell_day
        end
      end
    end
  end

  buy_sell_days[0] = buy_stock
  buy_sell_days[1] = sell_stock

  return buy_sell_days
end


binding.pry
