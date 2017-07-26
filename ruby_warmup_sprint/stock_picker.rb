def stock_picker(arr)
    x = 0
    pair_arr = []
    while x < (arr.size - 1)
        y = x+1
        while y < arr.size
            pair = [arr[x],arr[y]]
            pair_arr.push(pair)
            y += 1
        end
        x += 1
    end
    
    largest_diff = 0
    i = 0
    while i < pair_arr.size
        current = pair_arr[i]
        diff = current[1] - current[0]
        if diff > largest_diff
            largest_diff = diff
            indices = [arr.index(current[0]), arr.index(current[1])]
        end
        i += 1
    end
    indices
end

puts(stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]))