def fibonacci(nth)
  sequence = [1, 1]

  (nth - 2).times do | index |
    sequence[index+2] = sequence[index] + sequence[index+1]
  end

  return sequence
end

puts fibonacci(7)