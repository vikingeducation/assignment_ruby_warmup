# fib.rb

def fibonacci(sequence = 0)
  array = []
  0.upto(sequence - 1) do |index|
    index < 2 ? (arry << 1) : array << (array[index - 2] + array[index - 1])
  end
  array
end

# fibonacci(1)
