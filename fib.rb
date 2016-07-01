def fib(numbers)
	fib = [1,1,2]
	(numbers - 3).times do |x|
		fib << fib[-1] + fib[-2]
	end
	p fib
end

fib(7)