def fibonacci(places)

	results = [1]

	case places
	when 1
		results
	when 2
		results << 1
	else
		results << 1
		places = places -2
		places.times {results << results[-1] + results[-2]}

	end

	results

end

print "Calculate the Fibonacci Sequence to how many places?  $ "
places = gets.chomp.to_i

print fibonacci(places)
puts ""
