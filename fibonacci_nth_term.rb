#outputs the Fibonacci Sequence
#up to the nth term
def fibonacci(n)
  fib = [1, 1]
  #count from 3rd term but
  #i = 2 because of array 0 indexing
  i = 2

  while i < n
    fib.push(fib[i-1] + fib[i-2])
    i += 1
  end

  #print result
  puts fib.inspect
end

#fibonacci method tests
/fibonacci(7)/