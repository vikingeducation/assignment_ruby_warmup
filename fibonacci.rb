def fibonacci(current_num, cache)
  if current_num === 0 || current_num === 1
    return 1
  else
    return cache[current_num] ||= (fibonacci(current_num - 1, cache) + fibonacci(current_num - 2, cache))
  end
end

def render_fibonacci_sequence(nth_place, nth_cache = {})
  fib_sequence = []
  cache = nth_cache
  nth_place.times do |k|
    fib_sequence << fibonacci(k, cache)
  end

  print fib_sequence
end


render_fibonacci_sequence(40)
