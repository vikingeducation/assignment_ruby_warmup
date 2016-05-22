def fibonacci(num)
  sequence = [1, 1]
  return [1] if num == 1
  return sequence if num == 2
  (num - 2).times do |i|
    sequence << sequence[i] + sequence[i + 1]
  end
  sequence
end

fibonacci 7