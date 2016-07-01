def stock_picker(array)
	total = []
	array.each do |num|
		array.each do |num2|
			if array.index(num) > array.index(num2)
				next
			else
				total << [num2 - num, array.index(num), array.index(num2)]
			end
		end
	end
	p total.sort[-1][1..2]
end

stock_picker([44,30,24,32,35,30,40,38,15])
