def roll_dice number_of_dices = 1
	result = 0
	number_of_dices.times {result += rand(6)+1}
	result
end

puts roll_dice 5
puts roll_dice 1
puts roll_dice