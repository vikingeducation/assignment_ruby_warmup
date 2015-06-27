def roll_dice(num_dice = 0)
	dice_rolled = 0
	result = 0
	while dice_rolled < num_dice
		result += rand(1..6)
		dice_rolled += 1
	end
	result = 1 if result == 0
	return result
end

# puts "#{roll_dice(4)}"
# puts "#{roll_dice(2)}"
# puts "#{roll_dice}"

def dice_outcomes(num_dice, times_to_roll)
	times_rolled = 0
	result = Hash.new(0)
	while times_rolled < times_to_roll
		result["#{roll_dice(num_dice)}"] += 1
		times_rolled += 1
	end
	result.each do |number, values|
		string_of_hashes = ""
		values.times do
			string_of_hashes << "#"
		end
		puts "#{(number).ljust(3)}: #{string_of_hashes}"
	end
	return result
end

#dice_outcomes(3,100)


=begin
Rolling Dice
1. return result of rolling N 6 sided dice

Rolling Dice Outcomes
1. method dice_outcomes
2. take number of dice to roll, and number of times to roll them
3. return visual chart of how many times each number comes up
=end