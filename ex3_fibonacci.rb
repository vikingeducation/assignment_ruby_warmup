# Write a method fibonacci which outputs the Fibonacci Sequence
# members out to the specified number of members.

def fibonacci(n)
  result = []
  a, b = 0, 1

  1.upto(n).each do |i|
    a, b = b, a + b
    result << a
  end

  return result
end



p fibonacci(7)
#=> [1, 1, 2, 3, 5, 8, 13]