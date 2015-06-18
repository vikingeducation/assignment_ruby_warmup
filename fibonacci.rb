# Returns the nth value of the fibonacci sequence. Starts with 0.
def single_fibonacci(limit)
  if limit == 0
    return 1
  elsif limit == 1
    return 1
  else
    return single_fibonacci(limit - 1) + single_fibonacci(limit - 2)
  end
end

# Returns a list with the fibonacci sequence values.
def sequence_fibonacci(limit)
  fib_list = []
  # since we want from 0 to the limit, we use upto to iterate.
  0.upto(limit - 1) do |val|
    fib_list << single_fibonacci(val)
  end

  return fib_list
end

print sequence_fibonacci(6) # Should return [1,1,2,3,5,8]
print sequence_fibonacci(7) # Should return [1,1,2,3,5,8,13]