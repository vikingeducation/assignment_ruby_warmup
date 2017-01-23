#define method "fibonacci"

#input variable = sequence length

#output = an array containing fibonacci sequence as long as the sequence length called

def fibonacci(sequence_members=1)
	fib_seq = [0, 1]
	sequence_members.times do
		fib_seq << (fib_seq[-2] + fib_seq[-1])
	end
	fib_seq
end

puts fibonacci(17).inspect
fibonacci(7)