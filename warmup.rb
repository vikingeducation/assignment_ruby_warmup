def roll_dice(number=1)

	#set array to hold dice values
	rolls = [0] * 7
	#loop through number of dice thrown
	1.upto(number) {
		#pick random number between 1 and 6
		roll = 1 + rand(6)
		rolls[roll] += 1
	}
	#calculate total values of dice thrown
	total = 0	
	rolls.each_with_index do |roll, i|
		total += (roll * i)
	end

	return total
end

def dice_outcomes(dice, throws)
	#create empty hash to store results of throws
	results = {}
	#iterate over number of throws
	1.upto(throws) {
		#get total for number of dice thrown
		result = roll_dice(dice)
		#check whether total exists in hash or not
		if results.key?(result) then
			results[result] = results[result] + 1
		else
			results[result] = 1
		end
	}
	results = results.sort.to_h
	display_results(results)
end

def display_results(results)
	results.each do |key, value|
		if key < 10 then
			print "#{key}:  "
		else
			print "#{key}: "
		end
		print "#" * value
		puts ''
	end
end

def fibonacci(number)
	return number if (0..1).include? number
	(fibonacci(number - 1) + fibonacci(number - 2))
end

def fib_sequence(number)
	results = []
	i = 1
	while i <= number
		results[i] = fibonacci(i)
		i += 1
	end
	
	return results[1..number]
end

def stock_picker(prices)
	best_buy = nil
	best_sell = nil
	max_profit = 0

	(0..(prices.length - 2)).each do |buy_date|
	
		((buy_date + 1)..prices.length - 1).each do |sell_date|

			price_difference = prices[sell_date] - prices[buy_date]
			
			if price_difference > max_profit
				best_buy = buy_date
				best_sell = sell_date
				max_profit = price_difference
			end
		end
	end
  
  return [best_buy, best_sell]

end

def anagrams(word="pears")
	
	results = []

	myDic = ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]

	myDic_sorted = sort_dic(myDic)
	
	word_query = word.chars.sort.join
	
	myDic_sorted.each do |key, value|
		if word_query.upcase == value then
			results.push(key)
		else
		end
	end	
	return results
end

def sort_dic(myDic)
	results = {}
	myDic.each do |word|
		 results[word] = word.chars.sort.join 
	end
	return results
end

puts roll_dice()
puts ''
dice_outcomes(3, 100)
puts ''
print fib_sequence(7)
puts ''
print stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
puts''
print anagrams
puts ''
