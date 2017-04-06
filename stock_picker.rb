#!/usr/bin/ruby

def stock_picker(prices)
  best_buy = nil
  best_sell = nil
  max_profit = 0

  (0..(prices.length - 2)).each do |buy_date|
    ((buy_date + 1)..prices.length - 1).each do |sell_date|

      price_difference = prices[sell_date] - prices[buy_date]

      if price_difference > max_profit
        best_buy = buy_date
        best_sell = sell_date
        max_profit = price_difference
      end
    end
  end

  optimal_days = []
  optimal_days << best_buy
  optimal_days << best_sell

  puts "#{optimal_days}"
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
