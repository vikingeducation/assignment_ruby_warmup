def fibonacci(number_of_members)
  sequence = []
  one_back = 0
  two_back = 0

  1.upto(number_of_members) do |member|
    if member == 1
      sequence << 1
      one_back = 1
    else
      new_sum = one_back + two_back
      sequence << new_sum
      two_back = one_back
      one_back = new_sum
    end
  end

  return sequence
end
