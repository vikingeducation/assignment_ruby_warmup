def fibonacci(iterations = 1)
  fibonacci_numbers = []

  iterations.times do |iteration|
    # adjust for zero-index
    i = iteration + 1
    if i < 3
      fibonacci_numbers << 1
    else
      fibonacci_numbers << (fibonacci_numbers[-2] + fibonacci_numbers[-1])
    end
  end
  p fibonacci_numbers
end

fibonacci
fibonacci(1)
fibonacci(3)
fibonacci(10)
fibonacci(17)
