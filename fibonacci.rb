def fibonacci n 
	output = []
	times = n
	
	a = 1
	b = 0
	
	while times > 0
		sum = a + b
		output << sum
		a = b
		b = sum
		
		times -= 1
	end
	
	output
end