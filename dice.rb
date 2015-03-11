# Method roll_dice which returns the result of
# rolling N 6-sided dice where
# N is the input to the method (default = 1)

def roll_dice(n)
	total = 0
	rolls = 1
	while rolls <= n
		total = total + rand(1..6)
		rolls += 1
	end

	return total
end