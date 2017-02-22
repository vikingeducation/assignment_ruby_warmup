# dice


def die
  return (1..6).to_a.shuffle.last
  # get me a list, shuffle it and return the last item
end


def roll_dice(number_of_dice=1)
  dice_total = 0
  number_of_dice.times do
    dice_total += die
  end
  return dice_total
end


def dice_outcomes(number_of_dice, times_to_roll)
  results = {}
  times_to_roll.times do
    this_total = roll_dice(number_of_dice)
    if results.has_key?(this_total)
      results[this_total] += 1
    else
      results[this_total] = 1
    end
  end
    # print results
    results.sort.each do | result, times_rolled |
      octothorps = "#"*times_rolled
      puts "#{result}: #{octothorps}"
    end
  end

dice_outcomes(3,1000)


def fibbonacci(members, series = [1,2])
  if members == 0
    return []
  elsif members == 1
    return [1]
  elsif members == 2
    return series
  else
    series << series[-1] + series[-2]
    return fibbonacci(members-1, series)
  end
end

(0..7).to_a.each do |i|
  print "f\n"
  print fibbonacci(i)
end


def stock_picker(stock_prices)
  print "sp"
  maximum_benefit = -99999
  best_buy_day = 0
  best_sell_day = 0
  last_item_index = stock_prices.length - 2
  buy_day = 0

  while buy_day < last_item_index # can't sell after last day
    sell_day = buy_day + 1
    while sell_day < stock_prices.length - 1
      benefit = stock_prices[sell_day] - stock_prices[buy_day]
      if benefit > maximum_benefit
        maximum_benefit = benefit
        best_buy_day = buy_day
        best_sell_day = sell_day
      end
      sell_day += 1
    end
    print buy_day
    buy_day += 1
  end
  return [best_buy_day, best_sell_day, maximum_benefit]
end

print stock_picker [44, 30, 24, 32, 35, 30, 40, 38, 15]
