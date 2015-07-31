def fib(n)
	def rfib(n)
		return n if n == 0 || n == 1
		return rfib(n - 1) + rfib(n - 2)
	end
	fibs = []
	i = 0
	while i <= n
		fibs << rfib(i)
		i += 1
	end
	fibs
end

# puts fib(7).inspect