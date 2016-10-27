
# roll_dice(3) #=> 18

def roll_dice(die=1)
	sum = 0
	die.times do 
		sum += 1 + rand(6)
	end
	return sum
end

# returns a visual representation of the frequency results of
# rolling a specified number of dice a specified number of times.

# dice_outcomes(3, 128)
# 3:
# 4:###
# 5:####
# 6:##
# 7:####
# 8:#########
# 9:#################
# 10:#################
# 11:##################
# 12:######################
# 13:#########
# 14:#######
# 15:########
# 16:#####
# 17:#
# 18:##
# => nil

def dice_outcomes(die=1, rolls=1)
	results = Hash.new(0)

	# Roll the dice rolls times and track the sums in hash
	rolls.times do 
		results[roll_dice(die)] += 1 # Utilize existing function! Ruby will evaluate L side first
	end

	# Print out number each possible outcome occurred
	(1..(6*die)).each do |key|
		puts "#{key}: " + "\#"*results[key]
	end
end

# returns an array of Fibonacci numbers of digits length
# fibonacci(1) => [0]
# fibonacci(5) => [0, 1, 1, 2, 3]
# fibonacci(13) => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]

$fibs = [1,1]

def fibonacci(element = 1)
	element.times do |el|
		if el > ($fibs.length - 1)
			$fibs << $fibs[el-2] + $fibs[el-1]
		end			
		print $fibs[el].to_s + " "
	end
end

# Given an array of stock prices on consecutive days,
# returns an array of the best days to buy and sell

# stock_picker([99, 3, 4, 45, 33, 43, 23, 80, 55, 66]) #=> [1, 7]

def stock_picker(prices)
	greatest_profit = 0
	buy_day, sell_day = nil, nil

	(prices.length - 1).times do |day|
		((day+1)..(prices.length - 1)).each do |day2|
			current_profit = prices[day2] - prices[day]

			if current_profit > greatest_profit
				buy_sell = [day,day2] 
				greatest_profit = profit
			end
		end
	end

	return [buy_day, sell_day]
end

# Returns an array of the anagrams of a single-word string.
# anagrams("politics") => ["COLPITIS", "PSILOTIC"]
# anagrams("relief")  => ["FERLIE", "LIEFER", "REFILE"]

# NOTEß
# fname =  "./enable.txt"
# file = File.open(fname, "r")
# dictionary = file.read
# file.close
# $dictionary_words = dictionary.upcase.split("\n")

# Do all this in one line!
# $dictionary = File.readlines("enable.txt").map { |line| line.strip.upcase }

# letters = word.upcase.split("") # Easier to do w/ word.chars

$dictionary = File.readlines("enable.txt").map { |line| line.strip.upcase }

def anagrams(word)
	anagrams = []
	word.upcase!

	$dictionary.each do |dict_word|
		if dict_word.length == word.length && dict_word != word
				anagrams << dict_word if word.chars.sort == dict_word.chars.sort
		end
	end

	return anagrams
end













