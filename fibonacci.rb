def fibonacci(num)
	sequence = [1, 1]
	(num - 2).times do |i|
		sequence << sequence[i] + sequence[i + 1]
	end
	puts sequence.inspect
end

fibonacci 7