# Roll The Dices

def roll_dice number_of_dices = 1
	result = 0
	number_of_dices.times {result += rand(6)+1}
	result
end


def dice_outcomes(number_of_dices, number_of_times)

# Create an Hash Result

	result_table = {}

	(number_of_dices..number_of_dices*6).each do |possibility|

		result_table[possibility] = 0
	end

# Roll the Dices

	number_of_times.times do

		one_throw = roll_dice(number_of_dices)
		result_table[one_throw] += 1
	end

# Output the Chart

	result_table.each do |key, value|
		puts "#{key}: #{"#"*value}"
	end

	result_table
end

puts dice_outcomes(5,200)