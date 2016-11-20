def fibonacci(number=5)

  sequence = [1, 1]

  while sequence.length < number
    n = sequence[-2] + sequence[-1]
    sequence << n
  end

  puts sequence

end


fibonacci(80)