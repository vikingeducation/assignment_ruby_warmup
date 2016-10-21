def stock_picker(stocks)
  profit = 0
  buy_date = 0
  sell_date = 0

  stocks.each_with_index do | first_stock, first_index |
    stocks.each_with_index do | second_stock, second_index |

      current_profit = second_stock - first_stock

      if (first_index < second_index) && (current_profit > profit)
        buy_date = first_index
        sell_date = second_index

        profit = current_profit
      end
    end
  end

  puts "Buy on #{buy_date}, sell on #{sell_date}."
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])