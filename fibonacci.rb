def fibonacci(num)
  fib_seq = [1, 1]
  counter = 2
  while fib_seq.length <= num
    fib_seq << counter + (counter - 1)
    counter += 1
  end
  fib_seq
end

fibonacci(7)

