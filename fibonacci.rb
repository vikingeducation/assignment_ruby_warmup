def fibonacci(max)
  arr = [1,1]
  (max-2).times do
    arr.push(arr[-1] + arr[-2])
  end
  puts arr
end


fibonacci(7)
