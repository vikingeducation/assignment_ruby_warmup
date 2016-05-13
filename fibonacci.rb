# Write a method fibonacci which outputs the Fibonacci Sequence members out to the specified number of members

# PROGRAM FIB
def fibonacci(number=1)
# START WITH AN ARRAY TO STORE THE NUMBERS

# RETURN DEFAULT ARRAY IF NUMBER IS 1 or 2
if number == 1
	fib_array = [1]
	print "The fibonacci array is: #{fib_array}"
elsif number == 2
	fib_array = [1,1]
	print "The fibonacci array is: #{fib_array}"
end

fib_array = [1,1]
# DECLARE AN INDEX
index = 0
# STARTING WITH THE NUMBER
# STARTING AT THE FIRST INDEX 0
for num in (index...(number-2)) do
# STARTING WITH ONE AND THE FIRST INDEX
	# ADD THE VALUE OF THE FIRST INDEX PLUS THE SECOND INDEX
		# PUT THAT VALUE INTO THE ARRAY
	fib_array << (fib_array[num] + fib_array[num+1])
	# THEN GO TO THE NEXT INDEX
end

print "The fibonacci array is: #{fib_array}"

end

puts %q(Please enter a number)
number = gets.strip

fibonacci(number.to_i)