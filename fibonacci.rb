# Write a method, fibonacci, which outputs the Fibonacci Sequence members out to the specified number of members

def fibonacci(num_of_numbers)
  result = []
  if num_of_numbers >= 1
    result << 1
  end

  if num_of_numbers >= 2
    result << 1
  end

  if num_of_numbers >= 3
    (3..num_of_numbers).each do |number|
      result << result[number - 3] + result[number - 2]
    end
  end
  result
end


puts fibonacci(5)
puts "---------------"
puts fibonacci(10)
puts "---------------"
puts fibonacci(20)
