def stock_picker(prices)
  # if min comes before max, we can return their indices immediately
  if prices.index(prices.min) - prices.index(prices.max) < 0
    return [prices.index(prices.min), prices.index(prices.max)]
  end

  winner = {buy: 0, sell: 0, diff: 0}

  prices.each_with_index do |price, i|
    (i...prices.size).each do |j|
      if prices[j] - price > winner[:diff] && prices[j] - price > 0
        winner[:diff] = prices[j] - price
        winner[:buy] = i
        winner[:sell] = j
      end
    end
  end
  [winner[:buy], winner[:sell]]
end
