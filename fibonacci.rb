def fibonacci(num)
  
  sequence = [1, 1]
  
  if num == 0 
    sequence = [0]
    
  elsif num == 1 
    sequence = [1]
    
  else
    (num - 2).times do | index |
      sequence[index+2] = sequence[index] + sequence[index+1]
    end
  end
  
  return sequence
end

puts fibonacci(7)