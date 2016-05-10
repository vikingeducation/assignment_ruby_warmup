
def stock_picker(stock_price_by_day)

  most_profitable_pair_days = []

  highest_profit = 0

  stock_price_by_day.each_with_index do |price, day|

    if day < stock_price_by_day.length - 1

      possible_sale_days = stock_price_by_day[(day + 1)..(stock_price_by_day.length - 1)]

      highest_following_price = possible_sale_days.max

      current_day_profit = highest_following_price - price

      if current_day_profit > highest_profit

        highest_profit = current_day_profit

        most_profitable_pair_days[0] = day

        most_profitable_pair_days[1] = stock_price_by_day.index(highest_following_price)

      end

    end

  end

  most_profitable_pair_days

end
