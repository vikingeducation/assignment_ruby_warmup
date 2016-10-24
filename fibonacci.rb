def fibonacci(total_number_of_members)

  fibonacci_array = []
  current_number_of_members = 0
  current_fib_number = 1

  while current_number_of_members < total_number_of_members

    # calculate new fib number to add to array
      # the way to calculate this is to add the last item in array plus second to last item in array
    # add new fib number to array
    # update current number
    # increment number of members in array

    if fibonacci_array[-1] && fibonacci_array[-2]
      new_fib_number = current_fib_number + fibonacci_array[-2]
    else
      new_fib_number = current_fib_number
    end

    fibonacci_array << new_fib_number
    current_fib_number = new_fib_number
    current_number_of_members += 1

  end

  p fibonacci_array

end

fibonacci(2)
