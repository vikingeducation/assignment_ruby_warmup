def fibonacci(length)
  fibonacci_set = []

  case length
  when 0
  when 1
    fibonacci_set = [1]
  when 2
    fibonacci_set = [1, 1]
  else
    fibonacci_set = [1, 1]
    (length - 2).times do
      fibonacci_set << fibonacci_set[-1] + fibonacci_set[-2]
    end
  end

  fibonacci_set
end