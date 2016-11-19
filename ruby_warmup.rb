def roll_dice(num = 1)
  result = 0
  num.times { result += (rand(6) + 1) }
  result
end

def dice_outcomes(num_dice = 1, num_rolls = 1)
  outcomes = Hash.new(0)
  num_rolls.times do
    result = 0
    num_dice.times { result += (rand(6) + 1) }
    outcomes[result] += 1
  end
  outcomes = outcomes.sort.to_h
  max_width = outcomes.keys.max.to_s.length + 1
  outcomes.each do |num, freq|
    num = num.to_s + ":"
    puts "#{num.ljust(max_width, " ")} #{'#' * freq}"
  end
  outcomes
end

def fibonacci(num)
  raise ArgumentError, "Invalid argument" unless num.is_a?(Integer) and num > 0
  return [1] if num < 2
  fibs = [1, 1]
  fibs << fibs[-2] + fibs[-1] until fibs.size == num
  fibs
end

def stock_picker(prices)
  max_profit = 0
  days = []
  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day..-1].each_with_index do |sell_price, days_later|
      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit
        days[0] = buy_day
        days[1] = buy_day + days_later
      end
    end
  end
  days
end

def anagrams(string)
  raise ArgumentError, "String must be one word" if string.include?(" ")
  results = []
  string = string.downcase
  words = File.read("enable.txt").split(/\n/)
  words.each do |word|
    if word.chars.sort.join == string.chars.sort.join
      results << word.upcase unless word == string
    end
  end
  results
end
