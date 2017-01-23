def dice_roll(num_of_di=1)
	sum = 0
	dice = (1..6).to_a
	num_of_di.times do |num|
		sum += dice.sample
	end
	sum
end

def dice_outcomes(num_of_di=1,frequency_rolled=1)
	outcomes = Hash.new(0) #starting off with 0 is important
	frequency_rolled.times do
		results = dice_roll(num_of_di)
		outcomes[results] += 1
	end
	outcomes.sort.each do |key, value|
	puts "#{key} : #{value}"
	end
end

dice_outcomes(3,100)