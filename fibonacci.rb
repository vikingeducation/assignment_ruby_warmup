# Outputs the Fibonacci Sequence members out to the specified number of members.
def fibonacci(num)
  counter = 2
  prev = 1
  current = 1
# Initialise the array with the first 2 numbers
  fibonacci_nums = [1,1]

  # Display the fibonnaci sequence depending on the number passed in as an argument
  while counter < num
    sum = prev + current

    fibonacci_nums.push(sum)

    prev = current
    current = sum
    counter+=1
  end
  puts "#{fibonacci_nums}"
end

# Test the functions
fibonacci(7)
fibonacci(11)
  