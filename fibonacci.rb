#Write a method fibonacci which outputs the Fibonacci Sequence out to the specified number of digits.
#> fibonacci(7)
#=> [1, 1, 2, 3, 5, 8, 13]

def fibonacci(number_output)
  fibonacci=[1] #default with only one number
  if number_output > 1
    fibonacci << 1 #second digit in fibonnacci sequence
    if number_output > 2
      #already has two numbers in array
      (number_output-2).times do |count|
        fibonacci << fibonacci[-1] + fibonacci[-2]
      end
    end
  end
  print fibonacci
end

fibonacci(1)
fibonacci(2)
fibonacci(7)