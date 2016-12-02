def fibonacci(count)
  first_number = 0
  second_number = 1
  third_number = 1
  fibonacci_list = [1]
  
  (count - 1).times do
    third_number = first_number + second_number
    first_number = second_number
    second_number = third_number
    fibonacci_list.push(third_number)
  end
  puts fibonacci_list
end

fibonacci(7)