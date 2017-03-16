
#fibonacci
#takes n
#returns n numbers in the fib sequence
#fib sequence each product is the product of the prior two products
def fibonacci(n)
  fib_array = []
  fib_index = 1
  a, b = 1, 1
  while fib_index <= n
    c = a
    a = b
    b = c + b
    fib_array << c
    fib_index += 1
  end
  return fib_array
end

print fibonacci(10)
print fibonacci(14)
