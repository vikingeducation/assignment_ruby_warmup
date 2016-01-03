def stock_picker(price_array)
  buy_index = 0
  max_profit = [0]

  until buy_index == price_array.length-1
    sell_index = price_array.length-1
    until buy_index == sell_index
      puts sell_index
      profit = price_array[sell_index]-price_array[buy_index]
    
      if profit > max_profit[0]
        max_profit = [profit, buy_index, sell_index]
      end
      
      sell_index -= 1
    end
    buy_index += 1
  end   
  return [max_profit[1], max_profit[2]]
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
