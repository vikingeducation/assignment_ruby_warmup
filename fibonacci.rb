def fibonacci(input)
	array = []
	first = 1
	second = 1

	1.upto(input) do |n|
		if array[0] != 1 || array[1] != 1
			array << first
			array << second
		else
			array << array[n -1] + array[n -2]
		end
	end

	array
end

puts fibonacci(7)