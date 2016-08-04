def dice_outcomes dice_quantity=1, roll_quantity=1
	outcomes = {}
	possible_outcomes = (dice_quantity..(dice_quantity * 6)).to_a
	
	possible_outcomes.each { |i| outcomes[i] = 0 }
	
	roll_quantity.times do 
		outcome = roll_dice dice_quantity
		outcomes[outcome] += 1
	end
	
	outcomes.each { |k,v| puts "#{k}: #{"#" * v}" }
end


#using previous method:
def roll_dice dice_quantity=1
	total = 0
	
	dice_quantity.times do 
		total += rand(1..6)
	end
	total
end