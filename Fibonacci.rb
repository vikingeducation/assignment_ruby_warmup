def fibonacci(length)
  sequence = [1, 1]
  counter = 2
  while counter < length
    sequence << (sequence[-1] + sequence[-2])
    counter += 1
  end
  puts sequence[0..(length - 1)]
end

fibonacci(6)