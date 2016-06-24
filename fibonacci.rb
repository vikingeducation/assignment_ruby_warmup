# Fibonacci

# Write a method fibonacci which outputs the Fibonacci Sequence members out to the specified number of members. For example:

# > fibonacci(7)
# #=> [1, 1, 2, 3, 5, 8, 13]
def fibonacci(num)
	result = [1]
	current = 1
	until num == 1
		result.push(current)
		current += result[result.length-2]
		num -= 1
	end
	return result
end