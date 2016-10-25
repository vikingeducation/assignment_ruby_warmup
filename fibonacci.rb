def fibonacci(limit)
  array = [1, 1]
  until array.size == limit do
    array.push(array[-2] + array[-1])
  end
  return array
end
puts fibonacci(7)
