#Write a method stock_picker which takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable pair of days on which to first buy the stock and then sell the stock, for example:

def stock_picker(stocks_list)
  stocks_list_original = stocks_list.clone
  current_stock = stocks_list.shift
  final_buy_stock = nil
  final_sell_stock = nil
  current_difference = 0
  position = 0 
  sell_pos = 0
  buy_pos = 0

  stocks_list.each do |stock|
      position += 1
      if (current_stock - stock) > 0
        current_stock = stock
      else 
      end

      if (current_stock - stock) < current_difference
        final_buy_stock = current_stock
        final_sell_stock = stock
        current_difference = (final_buy_stock - final_sell_stock)
        sell_pos = position
      else
      end
  end

  buy_pos = stocks_list_original.index(final_buy_stock)


  puts "final profit is #{-1* current_difference}, bought #{final_buy_stock}, sold #{final_sell_stock}"
  puts "boutght at #{buy_pos} sold at #{sell_pos}"

  return sell_pos, buy_pos
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) #2. 6

stock_picker([1, 30, 24, 32, 35, 30, 40, 38, 15]) #0 6
