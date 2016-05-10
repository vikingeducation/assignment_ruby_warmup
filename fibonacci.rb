
def fibonacci(specified_number_members)

  fibonacci_sequence = [0, 1]

  penultimate_member = 0

  while fibonacci_sequence.length < specified_number_members

    fibonacci_sequence << (fibonacci_sequence[penultimate_member] + fibonacci_sequence[penultimate_member+ 1])

    penultimate_member+= 1

  end

  fibonacci_sequence

end
