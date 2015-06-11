#Write a method stock_picker which takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable pair of days on which to first buy the stock and then sell the stock
#> stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
#=> [2, 6]

def stock_picker(stock_prices)
  #profit is when difference > 0
  max = 0
  max_profit=[]

  #keep going through dates for more profitable pair
  stock_prices.each_with_index do |price_bought, day_bought|
    buy_price = price_bought

    #compare profits with diff selling dates
    stock_prices.each_with_index do |price_sold, day_sold|

      #day_sold must be after it was bought
      if day_sold > day_bought
        diff = price_sold - price_bought

        #compare to other price, store only if greater than before
        if diff > max
          max = diff
          max_profit = [day_bought, day_sold]
        end

      end #check for sell date after buy date
    end #selling date array iteration
  end #buying date cycling

  #return most profitable pair
  print max_profit
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])