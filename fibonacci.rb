def fibonacci(n)
	fibonaccis = []
	if(n > 0)
		first_fib = 1
		fibonaccis << first_fib
	else
		return
	end
	if(n > 1)
		second_fib = 1
		fibonaccis << second_fib
	end
	new_fib = 1
	prev_fib = 1
	(n-2).times do |i|
		swapper = new_fib
		new_fib = new_fib + prev_fib
		fibonaccis << new_fib
		prev_fib = swapper
	end
	fibonaccis
end

puts fibonacci(7)