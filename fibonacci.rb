def fibonacci(n)
	sequence=[]
	i=0
	while i<=n-1
		if (i<=1)
			current = 1
			sequence.push(current)
			i=i+1
		else
			current=sequence[i-2]+sequence[i-1]
			sequence.push(current)
			i=i+1
		end
	end
	print sequence
	print "\n"
end

fibonacci(10)