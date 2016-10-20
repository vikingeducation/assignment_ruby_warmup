# roll (num_dice) amount of dice & return result
def roll_dice num_dice=1

	# initialize
	sum = 0; 

	# roll dice
	num_dice.times do 
		sum += 1 + rand(6)
	end

	return sum

end

# chart (num_rolls) rolls of (num_dice) dice as a bar graph
def dice_outcomes num_dice, num_rolls

	# initialize hash that tracks dice outcomes
	outcome_chart = {}
	num_dice.upto(6*num_dice) do |dice_val|
		outcome_chart[dice_val] = ""
	end

	# roll dice & record in outcome_chart
	num_rolls.times do 
		roll = roll_dice(num_dice)
		outcome_chart[roll] += "#"
	end
 	           
	# display chart
	outcome_chart.each do |dice_val, occurs|
		puts "#{dice_val}:\t#{occurs}\n"
	end

end

# tests	
dice_outcomes(3,100)
puts "------------------"
dice_outcomes(4,80)
puts "------------------"
dice_outcomes(5,1000) 