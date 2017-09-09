# Write a method fibonacci which outputs the Fibonacci Sequence members out to the specified number of members. For example:

def fibonacci(max_nums)
  output = [1,1]

  while output.length < max_nums
    output << (output[-1] + output[-2])
  end

  p output
end

fibonacci(7)