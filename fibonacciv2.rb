def fibonacci(n)
  if n >1
    sequence = [1,1]
    until sequence.length >= n do 
      value = sequence[sequence.length-1] + sequence[sequence.length-2]
      sequence << value
    end
    return sequence
  elsif n==1 
    return [1]
  else
    print "This is not a valid input."
    return nil
  end
end

  