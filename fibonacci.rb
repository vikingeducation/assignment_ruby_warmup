def fibonacci number
	fibo_result = [1,1]
	(number-2).times do 
		fibo_result << fibo_result[-1] + fibo_result[-2]
	end

	fibo_result

end

puts fibonacci 10
puts "fibonacci 10 has #{fibonacci(10).length} result"