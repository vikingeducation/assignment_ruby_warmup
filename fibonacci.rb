def fibonacci(n)

  fibonacci=[1]

  if n > 1
    fibonacci << 1
    if n > 2

		(n-2).times do |count|
        fibonacci << fibonacci[-1] + fibonacci[-2]
    end
   end
 end
  print fibonacci
end

fibonacci(6)
