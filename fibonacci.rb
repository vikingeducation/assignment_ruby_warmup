def fibonacci(n)
  fib_array = [1]
  (n - 1).times do
    x = fib_array[-1] + (fib_array[-2] || 0)
    fib_array << x
  end
  puts fib_array
end

fibonacci(7)
