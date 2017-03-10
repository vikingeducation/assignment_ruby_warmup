def stock_picker(prices)
    profit = 0
    best_buy = 0
    best_sell = 1

    if prices == prices.sort.reverse
        puts "No way to profit, sorry!"
        return nil
    else
        prices.each do |first_price|
            if prices.index(first_price) != -1
                (prices.index(first_price) + 1).upto(prices.length - 1) do |current_num|
                    second_price = prices[current_num]
                    if second_price - first_price > profit
                        profit = second_price - first_price
                        best_buy = prices.index(first_price) + 1
                        best_sell = prices.index(second_price) + 1
                    end
                end
            end
        end
    end
    [best_buy, best_sell]
end