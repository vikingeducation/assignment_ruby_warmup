fib1=1
fib2=2
total=0
counter=0
fib_seq=[1, 2]

puts "How much fibbin' are we doing?"
puts "Please enter a number, greater than 0."
total=gets.chomp.to_i
while total<=0 do
  puts ""
  puts "WHAT DID I JUST TELL YOU, SON?!"
  sleep(5)
  puts ""
  puts "YOU ARE A DISGRACE TO ME,"
  puts "TO YOUR MOTHER,"
  puts "TO THE ENTIRE HUMAN RACE!!!"
  puts ""
  sleep (5)
  puts "NOW GO TO YOUR ROOM, AND THINK ABOUT WHAT YOU DONE!"
  puts "I don't want to see you out here for at least an HOUR!"
  puts "DO I MAKE MYSELF CLEAR?!"
  sleep(3600)
  puts ""
  puts "How much fibbin' are we doing?"
  puts "Please enter a number, greater than 0."
  total=gets.chomp.to_i
end

if total==1
  fib_seq=[1]
elsif total==2
else
  remaining=total-2
  remaining.times do
    counter = fib1 + fib2
    fib_seq << counter
  fib1 = fib2
  fib2 = counter
  end
end

puts "The Fibonacci sequence, out to #{total} is"
puts "#{fib_seq}"
