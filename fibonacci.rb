def fibonacci( number )
  fibonacci = []

  if number == 1
    fibonacci << 1
  elsif number == 2
    fibonacci = [1, 1]
  else
    fibonacci = [1, 1]
      (number - 2).times do |i|
        i = i + 2
        fibonacci << fibonacci[i-2] + fibonacci[i-1]
      end
    end
  puts "#{fibonacci}"
end

fibonacci(5)