def roll_dice number_of_dice=1
	(number_of_dice.times.map {Random.rand(1..6)}).inject(:+)
end

puts roll_dice(2)
puts roll_dice(4)
puts roll_dice()
puts "-"*9

def dice_outcomes(number_of_dice, dice_rolls)
	dice_stats = {}
	dice_rolls.times do
		current_roll = roll_dice(number_of_dice)
		#Add dice roll to stats hash
		if dice_stats[current_roll].nil?
			dice_stats[current_roll] = 1
		else
			dice_stats[current_roll] += 1
		end
	end

	#Visual output of stats of hash
	dice_stats.sort.each do | key, value|
		puts key.to_s + ': ' + value.to_s
	end
end

dice_outcomes(3,100)
puts "-"*9


def fibonacci(sequence_number)
	fib_list = []
	a = 1
	b = 1
	fib_list.push(a).push(b)
	(sequence_number-2).times do
		c =  a + b
		a = b
		b = c
		fib_list.push(c)
	end
	return fib_list
end

p fibonacci(7)


def stock_picker(stocks)
	stock_combo = []
	stock_compare = 0
	(stocks.length).times do |index_a|
		(index_a+1..stocks.length-1).each do |index_b|
			comparison = stocks[index_b] - stocks[index_a]
			#puts "#{index_a} vs #{index_b} : #{comparison}"
			if comparison > stock_compare
				stock_compare = comparison
				stock_combo = [index_a, index_b]
			end
		end
	end
	return stock_combo
end

p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])


def anagrams  word
	all_anagrams = []
	main_sorted_word = word.chars.sort.join
	File.open("/Users/fischerc/Documents/assignment_ruby_warmup/enable.txt", "r") do |enable_file|
		enable_file.each_line do |line|
			campare_word = line.chomp.chars.sort.join
			if main_sorted_word == campare_word
				all_anagrams.push(line.chomp)
			end
		end
	end
	return all_anagrams
end


p anagrams("pears")

