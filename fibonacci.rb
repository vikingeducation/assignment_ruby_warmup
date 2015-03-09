# Method FIBONACCI that outputs the fibonacci sequence

def fibonacci(num)

	#Establishing starting positions for fibonnaci array

	if num == 1
		array = [1]
	else
		array = [1, 1]
	end

	index = 2
	while index < num
		new_number = array[index - 1] + array[index - 2]
		array << new_number
		index += 1
	end

	return array
end