def fibonacci(number_of_digits)
  fibonacci_array = [1,1]

  if number_of_digits >= 2

    (number_of_digits-2).times do |variable|
      fibonacci_array << fibonacci_array[-1] + fibonacci_array[-2]
    end

    return fibonacci_array

  else
    puts "Please enter a number greater than or equal to 2"
  end


end