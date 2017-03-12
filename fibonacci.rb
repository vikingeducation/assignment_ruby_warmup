
#fibonacci
#takes n
#returns n numbers in the fib sequence
#fib sequence each product is the product of the prior two products
def fibonacci(n)
  fib_array = []
  return 1 if n <= 2
  fib_index = 3
  a, b = 1, 1
  while fib_index <= n
    c = a + b
    a = b
    b = c
    fib_index += 1
  end
  fib_array << c
end

print fibonacci(10)
