def fibonacci(sequence_length)
  a = 1
  b = 1
  fibonacci_sequence = [a, b]
  (sequence_length - 2).times do
    fibonacci_sequence << (a + b)
    a = fibonacci_sequence[-2]
    b = fibonacci_sequence[-1]
  end
  fibonacci_sequence
end