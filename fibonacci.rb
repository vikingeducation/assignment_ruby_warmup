def fibonacci(limit)
  a = 0
  b = 1
  arr = []
  
  limit.times do
    arr.push(b)
    temp = a
    a = b
    b = temp + a
  end
  
  return arr
  
end

fibonacci(7)