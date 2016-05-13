#PROGRAM ROLL_DICE
def roll_dice(number_of_dice=1)
# USING NUMBERS 1-6 FOR SIDES
roll_number = (1..6).to_a
result = 0

# TAKING x NUMBER OF DICE
number_of_dice.times {
# FOR EACH DIE GENERATE A NUMBER ADD TO RESULT
	result += roll_number.sample
}
# RETURN THE RESULT
return result

end

roll_dice(4)