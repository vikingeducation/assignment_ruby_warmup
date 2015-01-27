def fibonacci(length)
  list_of_fibs = [1]
  if length == 1
    return list_of_fibs
  end
  list_of_fibs << 1
  if length == 2
    return list_of_fibs
  end
  (length - 2).times do
    list_of_fibs << list_of_fibs[-2] + list_of_fibs[-1]
  end
  list_of_fibs
end