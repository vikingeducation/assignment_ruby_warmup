# outputs the fibonacci sequence members out of specified number of members
# > fibonacci(7) #=> [1, 1, 2, 3, 5, 8, 13]

def fibonacci(n)
  fibonacci = []
  a = 1 # current num (initially)
  b = 1 # next num (initially)
  n.times do 
    num = a
    fibonacci << num
    a = b # update to next num
    b = b + num  # update to next next num
  end
  fibonacci
end

puts fibonacci(7)