def fibonacci(n)
  fibonacci_numbers = []
  a = 1
  b = 1
  n.times do
    fibonacci_numbers << a
    a, b = b, a + b
  end
  fibonacci_numbers
end

