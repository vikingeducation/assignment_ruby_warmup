
def stock_picker(arr)
	result_array = []
	arr.each_with_index do |buy, index_buy|
		arr.each_with_index do |sell, index_sell|
			if index_buy < index_sell && arr[index_buy] < arr[index_sell]  
				result_array << index_buy
				result_array << index_sell
				result_array << (arr[index_sell] - arr[index_buy])
			end
		end
	end
	return final_arr = [result_array[(result_array.index(result_array.max))-2],
	 result_array[(result_array.index(result_array.max))-1]]

end
arr = [44, 30 ,24 ,32, 35, 30, 40, 38, 15]
print stock_picker(arr)