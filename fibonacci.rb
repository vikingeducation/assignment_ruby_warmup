def fibonacci(desired_length)
  prev = 0
  current = 1
  result = []
  while result.length < desired_length do
    result << current
    current += prev
    prev = result[-1]
  end
  result
end