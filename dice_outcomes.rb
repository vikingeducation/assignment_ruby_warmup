#PROGRAM DICE OUTCOMES
def dice_outcomes(number_of_dice=1, number_of_rolls=1)

number_of_dice.to_i
number_of_rolls.to_i


outcomes = []

# ROLL THE NUMBER OF DICE x TIMES
number_of_rolls.times {
	# CALL THE FUNCTION ROLL_DICE
	# THE RETURN VALUE WILL BE A RESULT TO BE STORED INTO AN ARRAY
	outcomes << roll_dice(number_of_dice)
}

# COUNT THE NUMBER OF OCCURENCES OF EACH NUMBER
dice_hash = outcomes.inject(Hash.new(0)) { |total, e| total[e] += 1; total }

# SORT THE HASH
dice_hash.sort.each { |k, v|	puts "#{k}: #{"#"*v}"}

end

def roll_dice(number_of_dice=1)

# NEED AN ARRAY TO STORE EACH ROLL OF THE DIE
number_of_dice.to_i unless number_of_dice.is_a?(Fixnum)

# USING NUMBERS 1-6 FOR SIDES
roll_number = (1..6).to_a
result = 0

# TAKING X NUMBER OF DICE
number_of_dice.times {
# FOR EACH DIE GENERATE A NUMBER ADD TO RESULT
	result += roll_number.sample
}
# RETURN THE RESULT
return result

end
dice_outcomes(2,100)