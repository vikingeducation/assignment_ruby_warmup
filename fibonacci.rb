def fibonacci(n)
    if n == 1 || n == 2
        return 1
    end
    
    return fib(n-1) + fib(n-2)
    
end