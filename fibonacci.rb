=begin
  To Do
  - Write a method fibonacci
  - which outputs the Fibonacci Sequence
  - out to the specificed number of members

  e.g. > fibonacci(7)
  => [1, 1, 2, 3, 5, 8, 13]

  BRAINSTORMIN
  - well the first two numbers have to bet set in stone
  - after that we can start having fun with maths!
=end

def fibonacci(length_of_sequence)
  sequence = [0,1]
  if length_of_sequence == 1
    sequence.shift
  elsif length_of_sequence <= 0
    return "enter a positive value fool!"
  else
    length_of_sequence.times {|number|
      if number == 0
        next
      else
        sequence << (sequence[number-1] + sequence[number])
      end
    }
    sequence.shift
  end
  sequence
end

print fibonacci(2)