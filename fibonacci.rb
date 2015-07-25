test = 7

def fibonacci(input)
  fib_sequence = []

  def fib(index)
    if index == 0
      return 0
    elsif index == 1
      return 1
    end

    fib(index - 1) + fib(index-2)
  end

  input.times do |num|
    fib_sequence.push(fib(num + 1))
  end

  return fib_sequence
end

print fibonacci(test)
