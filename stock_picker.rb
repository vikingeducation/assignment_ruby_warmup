def stock_picker(arr)
    biggest_diff = nil
    buy = 0
    sell = 0
    
    idx = 0
    while idx < arr.length - 1   #Loop from day 0 to day before last day
        idx2 = idx + 1
        while idx2 < arr.length   #Loop from day after purchasing stock
            diff = arr[idx2] - arr[idx]   #find difference in stock prices 
            
            if biggest_diff == nil || diff > biggest_diff   #find the biggest difference in stock prices for most profitable buy and sell date
                biggest_diff = diff
                buy = idx
                sell = idx2
            end
            idx2 +=1
        end
        idx +=1
    end
    p buy, sell
end
