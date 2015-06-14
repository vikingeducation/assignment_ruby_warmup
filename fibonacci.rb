def fibonacci_sequence(repeat)
  first_number = 0
  second_number = 1
  sequence = [1]
  (repeat-1).times do |current|
    sequence << first_number + second_number
    first_number = second_number
    second_number = sequence[current+1]
  end
  return sequence
end

p fibonacci_sequence(7)
p fibonacci_sequence(1)
p fibonacci_sequence(0)
p fibonacci_sequence(20)