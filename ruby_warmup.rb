def roll_dice(n=1)
	sum = 0
	n.times { sum += rand(7) }
	sum
end

def dice_outcomes(dice,n)
	#get a hash of empty strings first
	#create an empty hash 
	#for 'n_times' times, roll 'dice' number of dice
	#add a '#' to the value of the key (with the key obviously being the value of the dice roll)
	
	outcomes = {}
	possible_values = Array(dice..(6*dice))
	possible_values.each {|possible_value| outcomes[possible_value] = ""}
	puts outcomes; puts
	outcomes[8] << '#'
	puts outcomes

	n.times do
		roll = 1
		dice.times do  
			a_roll = rand(1..6)
			roll += a_roll
		end
		outcomes[roll] << "#"
	end
	return outcomes

end

def fibonacci n
	#start with an array of the first two numbers
	#add the last two numbers of the array together and add it to the end of the array until the array is of n length

	sequence = [1, 1]
	until sequence.length == n 
		new_value = sequence[-1] + sequence[-2]
		sequence.push(new_value)
	end
	return sequence
end

