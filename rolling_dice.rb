def roll_dice(n)

	
	total =  1

	n.times do |d|
	 	total += rand(1..6)
	end
	puts total
end



roll_dice(6)

=begin

roll_dice(4)

total = 0
n.times do
  total += rand(1..6)
end

=end