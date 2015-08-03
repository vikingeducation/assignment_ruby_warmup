# def rfib(n)
# 	return n if n == 0 || n == 1
# 	return rfib(n - 1) + rfib(n - 2)
# end

def fib(n)
	fibs = []
	rfib = lambda do |n|
		return n if n == 0 || n == 1
		return rfib.call(n - 1) + rfib.call(n - 2)
	end
	i = 0
	while i <= n
		fibs << rfib.call(i)
		i += 1
	end
	fibs
end

# puts fib(7).inspect