def stock_picker(arr)
  buy=0
  sell=0

  arr.length.times do |purchase|
    arr.length.times do |rid|
      if (arr[rid]-arr[purchase]) > (arr[sell] - arr[buy]) and purchase < rid
        buy = purchase
        sell = rid
      end
    end
  end

  return [buy,sell]

end


stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
