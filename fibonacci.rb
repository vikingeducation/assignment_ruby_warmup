def fibonacci(count)
  sequence = [0]
  count.times do 
    if sequence.size < 2
      sequence << sequence[-1] + 1
      next
    end
    sequence << sequence[-1] + sequence[-2]
  end
  sequence - [0]
end
