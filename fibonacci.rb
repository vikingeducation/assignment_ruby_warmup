def fibonacci(n)
  return [] if n == 0
  return [1] if n == 1
  return [1,1] if n == 2
  
  (1..(n-2)).inject([1,1]) do |memo, i| 
    memo << memo.last(2).inject(:+) 
  end
end

p fibonacci(7)