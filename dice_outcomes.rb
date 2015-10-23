def dice_outcomes(num_of_dice, rolls)
	final_result =0
	single_die = (1..6).to_a
	result_array = (num_of_dice..(num_of_dice*6)).to_a
	result_hash = {}

		rolls.times do |time|
			final_result = 0
				num_of_dice.times do 
					final_result += single_die[rand(0..5)]
				end
					result_hash[final_result] =  result_hash[final_result].to_s + "#"
		end
	result_array.length.times do |length|
		puts "#{result_array[length]}:  #{result_hash[length + num_of_dice]}"
	end	
	puts result_hash
end

