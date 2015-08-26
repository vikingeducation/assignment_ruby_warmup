#outputs the Fibonacci Sequence
#up to the specified number of digits
def fibonacci(n)
  #term array
  fib = [1, 1]
  #digit array
  fib_dig = [1, 1]

  #term counter nth, digit counter d
  #count from 3rd digit but
  #d = 2 because of array 0 indexing
  nth = 2
  d = 2

  while d < n
    #calculate new term and its num of digits
    fib.push(fib[nth-1] + fib[nth-2])
    term_digits = Math.log10(fib[nth]).to_i + 1

    #if term has only 1 digit, push to fib_dig and update i
    if term_digits == 1
      fib_dig.push(fib[nth])
      d += 1
    #else term has more, split to integer array
    #and push each digit to fib until while loop
    #is satisfied
    else
      term_str = fib[nth].to_s.split("").map {|c| c.to_i}
      term_str.each do |x|
        fib_dig.push(x)
        d += 1
        break if d >= n
      end
    end
    nth += 1
  end

  #print result
  puts fib_dig.inspect
end

#fibonacci method tests
/fibonacci(15)/