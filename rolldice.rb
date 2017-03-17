def roll_dice(times)
	diceNumbers = []
	while times > 0
		diceNumbers.push(rand(1..6))
		times -= 1
	end

	sum = 0
	diceNumbers.each do |x|
		sum += x	
	end
	puts sum
end

def roll_dice_2(times, amt)
  
  diceNumbers = []
    (1..times).each do
        diceNumbers.push(rand(1..6) * amt)
	end

	obj = {}
  
  myRange = amt * 6

	(amt..myRange).each do |x|
		obj[x] = 0
	end
	
    diceNumbers.each do |y|
        num = diceNumbers.count(y)
        obj[y] = num
    end
    
    print obj
end

roll_dice_2(3, 3)