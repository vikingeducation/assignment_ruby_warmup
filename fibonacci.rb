def fibonacci(num)
	first_num = 1
	fib_holder = [1,1]
	(num-2).times do |time|
		first_num += fib_holder[time] 
		fib_holder << first_num
	end
	print fib_holder
end