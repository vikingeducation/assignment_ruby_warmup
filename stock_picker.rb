def stock_picker(prices)
  max_profit = 0
  best_days = []

  prices.each do |comparison_price|
    comparison_array = prices[prices.index(comparison_price)+1..-1]

    comparison_array.each do |price|
      if price - comparison_price > max_profit
        max_profit = price - comparison_price
        best_days = [prices.index(comparison_price), prices.index(price)]
      end
    end
  end
  best_days
end