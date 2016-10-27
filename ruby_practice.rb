
def roll_dice(die=1)
	sum = 0
	die.times do 
		sum += (1..6).to_a.sample
	end
	return sum
end

def dice_outcomes(die=1, rolls=1)
	results = Hash.new(0)

	# Roll the dice rolls times and track the sums in hash
	rolls.times do 
		sum = 0
		die.times do
			sum += (1..6).to_a.sample			
		end
		results[sum] += 1
	end

	# Print out number each possible outcome occurred
	(1..(6*die)).each do |key|
		puts "#{key}: " + "\#"*results[key]
	end
end

# dice_outcomes(3, 100)

$fibs = [1,1]
def fibonacci(element = 1)
	element.times do |el|
		if el > ($fibs.length - 1)
			$fibs << $fibs[el-2] + $fibs[el-1]
		end			
		print $fibs[el].to_s + " "
	end
end

# fibonacci(8)

def stock_picker(prices)
	greatest_profit = 0
	buy_sell = []
	(prices.length - 1).times do |day|
		((day+1)..(prices.length - 1)).each do |day2|
			profit = prices[day2] - prices[day]
			if profit > greatest_profit
				buy_sell = [day,day2] 
				greatest_profit = profit
			end
		end
	end
	return buy_sell
end

# p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 

fname =  "./enable.txt"
file = File.open(fname, "r")
dictionary = file.read
file.close
$dictionary_words = dictionary.upcase.split("\n")

def anagrams(word)
	letters = word.upcase.split("")
	anagrams = []
	$dictionary_words.each do |dict_word|
		if dict_word.length == letters.length && dict_word != word.upcase
			if letters.all? { |letter| dict_word.include? letter }
				anagrams << dict_word
			end
		end
	end
	return anagrams
end

p anagrams("pears")

p anagrams("zygote")











