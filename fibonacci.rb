def fibonacci(n)

	f_0 = 0
	f_1 = 1

	fibonacci_numbers = [f_1]

	(n-1).times do |i|
		fibonacci_numbers << f_0 + f_1
		f_0 = f_1
		f_1 = fibonacci_numbers.last
	end

	fibonacci_numbers
end

puts fibonacci(20)