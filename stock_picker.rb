def stock_picker(arr)

   max = arr.size - 1
   min = 0
   diff = 0
   save_buy_index = 0
   save_sell_index = 0

   (max - 1).times do |buy_index|
		buy_index+1.upto(max) do |sell_index|
   			if (arr[sell_index] - arr[buy_index]) >= diff
   				save_buy_index =  buy_index
   				save_sell_index = sell_index
   				diff = arr[sell_index] - arr[buy_index]
   			end
        end
    end 
    puts "Stock buy at #{arr[save_buy_index]} index #{save_buy_index}"
    puts "Stock sell at #{arr[save_sell_index]} index #{save_sell_index}"
    return [save_buy_index,save_sell_index].inspect
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
puts stock_picker([35,40,41,38,36,10])