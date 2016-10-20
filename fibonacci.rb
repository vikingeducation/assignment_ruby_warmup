#fibonacci.rb outputs the Fibonacci Sequence members out to the specified
#number of members.

def fibonacci
  fib_array = [0,1]
  a = 0
  until a == 11
    a += 1
    fib_array << fib_array[-2] + fib_array[-1]
  end
  return fib_array
end

print fibonacci
