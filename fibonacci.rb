def fibonacci(x)
    fib_array=[]
    i=0
    while (x-1)>=i
        i > 1 ? fib_array << (fib_array[i-1] + fib_array[i-2]) : fib_array << 1
        i+=1
    end
    fib_array
end