#Write a method fibonacci which outputs the 
#Fibonacci Sequence members out to the 
#specified number of members.

def fibonacci(number)
  start_number = 1
  number.times do 
    sequence = start_number + start_number
    puts sequence
  end
end

puts fibonacci(7)
puts fibonacci(18)

#need to make this an array