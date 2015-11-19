def roll_dice(number_of_die=1)
  i = 0
  number_of_die.times do
    i += roll_die
  end
  i
end

def roll_die
  (1..6).to_a.sample
end

def dice_outcomes(number_of_die,number_of_trials)
  outcomes = Hash.new
  total_numbers = number_of_die * 6

  (1..total_numbers).each do |i|
    outcomes[i] = 0
  end

  number_of_trials.times do
    result = roll_dice(number_of_die)
    outcomes[result] += 1
  end

  output = ""

  outcomes.each do |h,k|
    output += "#{h}: #{k}\n"
  end

  output
end

def fibonacci(position)
  return [] if position < 1
  return [1] if position == 1
  return [1, 1] if position == 2

  values = [1,1]

  (position-2).times do
    values << values[-1] + values[-2]
  end

  values
end


def stock_picker(stocks)
  buy_index = 0
  sell_index = 0
  max_profit = 0

  stocks.each_with_index do |buy_price, i|
    stocks.each_with_index do |sell_price, j|
      next if j <= i

      if sell_price - buy_price > max_profit
        max_profit = sell_price - buy_price
        buy_index = i
        sell_index = j
      end
    end
  end

  [buy_index, sell_index]
end


def anagrams(word)

  dictionary = Hash.new { |h,k| h[k] = [] }

  File.readlines(__dir__ + "/enable.txt").each do |w|
    key = w.strip.upcase.chars.sort.join
    dictionary[key] << w.strip.upcase
  end

  key = word.upcase.chars.sort.join
  dictionary[key] - [word.upcase]
end


