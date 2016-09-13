# Calculate the Fibonacci Sequence to a specified number of members. A F.S. is where the nth term = sum of (n-1)th and (n-2)th terms. 
# The nth term is represented by the parameter "number".
# Since the sequence is calculated from sum of previous two terms, start calculation from the third term on. 
# Note: remember that the index, representing the nth term, starts from 0, not 1. 

def fibinacci(number)
  fibinacci_series = [1,1]
  index = 2
  while index <= (number-1)
    fibinacci_series[index] = fibinacci_series[index - 1] + fibinacci_series[index - 2]
    index = index + 1
  end
  return fibinacci_series
end


# Main program

print "\n"
print "Enter up to which number in Fibinacci series: "
fib_number = 0
while fib_number < 3
  fib_number = gets.chomp.to_i
  if fib_number < 3
    print "enter number 3 or above: "
  end
end
print "\n"
puts "**********************************************"
print "\n"

puts "Fibinacci(#{fib_number}) = #{fibinacci(fib_number)}"
print "\n"

# End



# End
