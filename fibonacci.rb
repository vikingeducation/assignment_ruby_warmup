def fibonacci_number n
  return n if (0..1).include? n
  (fibonacci_number(n - 1) + fibonacci_number(n - 2)) if n > 1
end

def fibonacci num
  result = []
  num.times do |i|
    result << fibonacci_number(i + 1)
  end
  result
end
