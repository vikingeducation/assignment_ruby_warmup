def fibonacci (number_of_digits)
  fibonacci_array = [1, 1]
  if number_of_digits == 0
    return nil
  elsif number_of_digits == 1
    return 1
  elsif number_of_digits == 2
    fibonacci_array
  end
  (number_of_digits-2).times do
    fibonacci_array << fibonacci_array[-1] + fibonacci_array[-2]
  end
  fibonacci_array
end

puts fibonacci(10)
