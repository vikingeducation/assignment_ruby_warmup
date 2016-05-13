# Write a method fibonacci which outputs the Fibonacci Sequence members out to the specified number of members

# PROGRAM FIB
def fibonacci(number=1)
# START WITH AN ARRAY TO STORE THE NUMBERS
fib_array = [1,1]
# DECLARE AN INDEX
index = 0
# STARTING WITH A NUMBER
# FOR THAT NUMBER OF TIMES
for num in (index...(number-2)) do
# STARTING WITH ONE AND THE FIRST INDEX
	# ADD THE VALUE OF THE FIRST INDEX PLUS THE SECOND INDEX
		# PUT THAT VALUE INTO THE ARRAY
	fib_array << (fib_array[num] + fib_array[num+1])
	# THEN GO TO THE NEXT INDEX
end

puts fib_array

end

fibonacci(7)