def fibonacci(n)
    first = 1
    second = 1
    fib_arr = [first, second]
    x = 3
    while x <= n
        third = first + second
        fib_arr.push(third)
        first = second
        second = third
        x += 1
    end
    fib_arr
end

puts(fibonacci(7))
puts(fibonacci(5))