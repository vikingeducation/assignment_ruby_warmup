def roll_dice number_of_dice=1
	(number_of_dice.times.map {Random.rand(1..6)}).inject(:+)
end

puts roll_dice(2)
puts roll_dice(4)
puts roll_dice()