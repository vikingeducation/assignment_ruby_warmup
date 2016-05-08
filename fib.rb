def fib(n)
  fib_seq = [1, 1]

  until fib_seq.length == n
    fib_seq << fib_seq[-2] + fib_seq[-1]
  end

  fib_seq
end

# Recursive Solution
# def next_fib(n)
#   if n == 0 || n == 1
#     return n
#   else
#     return next_fib(n - 1) + next_fib(n - 2)
#   end
# end

# def fib(n)
#   fibs = []
#   (n + 1).times do |num|
#     fibs << next_fib(num)
#   end
#   fibs[1..-1]
# end
