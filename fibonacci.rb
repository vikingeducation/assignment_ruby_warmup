def fibonacci(number=1)
  fib_array = [1, 1]
  (number - 2).times do
    fib_array << fib_array[-1] + fib_array[-2]
  end
  p fib_array
end
fibonacci(7)