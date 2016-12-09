# Write a method fibonacci which outputs the Fibonacci Sequence members out to the specified number of members. 

def fibonacci(n)
  result = []
  n.times do
    if result.empty? || result.length == 1
      result << 1
    else
      result << result[-1] + result[-2]
    end
  end
  result
end

puts fibonacci(7).inspect
