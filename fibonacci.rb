def fibonacci(num)
	entries = 0
	fib_sequence = []
	while entries < num
		if fib_sequence.length < 2
			fib_sequence << 1
		else
			fib_sequence << (fib_sequence[entries-1] + fib_sequence[entries-2])
		end
		entries += 1
	end
	return fib_sequence
end

#Test: puts(fibonacci(7) == [1, 1, 2, 3, 5, 8, 13])

=begin
1. takes a number
2. returns array of fibonacci series upto that number of entries 
=end