def roll_dice(num)
	final_result =0
	single_die = (1..6).to_a
		num.times do |result|
			final_result += single_die[rand(0..5)]
		end
	print "Total rolled: #{final_result}. You rolled #{num} dice."
end

roll_dice(3)