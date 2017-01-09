def fibonacci(current_num, cache)
  if current_num === 0 || current_num === 1
    current_num
  else
    cache[current_num] ||= (fibonacci(current_num - 1, cache) + fibonacci(current_num - 2, cache))
  end
end

def render_fibonacci_sequence(nth_place, nth_cache = {})
  fib_sequence = []
  cache = nth_cache
  nth_place.times do |k|
    fib_sequence << fibonacci(k, cache)
  end

  print fib_sequence
  puts
end

print 'Please enter the number you want to find the fibonacci sequence to: '
nth_place_to_find = gets.chomp.to_i
render_fibonacci_sequence(nth_place_to_find)
