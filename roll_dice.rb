def roll_dice( dice = 1 )
	total = 0
	dice.times do
		total += rand(7)
	end
	puts "#{total}"
end

roll_dice( 4 )