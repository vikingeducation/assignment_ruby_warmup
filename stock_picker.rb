def stock_picker(stock_prices = [44, 30, 24, 32, 35, 30, 40, 38, 15, 30].shuffle)
  profit = 0
  start_index = 0
  highest_index = 0
  number_of_days = stock_prices.length

  stock_prices.each_with_index do |diff_num, index|
    number_of_days.times do |k|
      next unless diff_num < stock_prices[k] && index < k && stock_prices[k] - diff_num > profit
      profit = stock_prices[k] - diff_num
      start_index = index
      highest_index = k
    end
  end

  {
    most_profit: profit,
    purchase_date: start_index,
    sell_date: highest_index
  }
end

stock_price_history = [44, 30, 24, 32, 35, 30, 40, 38, 15, 30].shuffle
print "#{stock_price_history}\n"

analysis_result = stock_picker(stock_price_history)

puts 'The most profitable trade was:'
puts "The purchase on Day #{analysis_result[:purchase_date] + 1} "\
     "and selling on Day #{analysis_result[:sell_date] + 1}."
puts "This yealded a profit of $#{analysis_result[:most_profit]}."
