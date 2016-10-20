def fibonacci(num)

	# deal with 0 & negatives
	return "invalid: must be at least 1" if num <= 0

	# initialize sequence
	seq = [0,1]

	# create fibonacci sequence
	(num-1).times do 
		seq.push(seq[-2] + seq[-1])
	end

	# remove first value (0) and return
	seq.shift
	return seq

end

# tests
puts fibonacci(7).inspect
puts "------------------"
puts fibonacci(3).inspect
puts "------------------"
puts fibonacci(12).inspect
puts "------------------"
puts fibonacci(0).inspect
puts "------------------"
puts fibonacci(-1).inspect
puts "------------------"
puts fibonacci(1).inspect
