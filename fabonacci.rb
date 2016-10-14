def fibonacci(num)
  num >= 1 ? fib = [1] : fib = []
  store_num1 = 0
  store_num2 = 1
  (num - 1).times do |i|
    fib << store_num1 + store_num2
    store_num1 = store_num2
    store_num2 = fib.last
  end
  fib
end

puts fibonacci (7)
