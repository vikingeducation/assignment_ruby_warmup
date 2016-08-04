###rolling_dice###

def roll_dice dice_quantity=1
	total = 0
	
	dice_quantity.times do 
		total += rand(1..6)
	end
	total
end

###rolling_dice###

###rolling_dice_outcomes###

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

###rolling_dice_outcomes###

###fibonacci###

def fibonacci n 
	output = []
	times = n
	
	a = 1
	b = 0
	
	while times > 0
		sum = a + b
		output << sum
		a = b
		b = sum
		
		times -= 1
	end
	
	output
end

###fibonacci###

