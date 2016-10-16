def roll_dice(n=1)
	total = 0
	n.times do
		total += (1 + rand(6))
	end
	puts total
end
roll_dice(4)
roll_dice(2)
roll_dice

def dice_outcomes(n_of_dice, rolls)
	outcomes = {}
	min_possible = n_of_dice * 1
	max_possible = n_of_dice * 6
	(min_possible .. max_possible).each do |n|
		outcomes[n] = ""
	end
	rolls.times do
		total = 0
		n_of_dice.times do
			total += (1 + rand(6))
		end
		outcomes[total] += "#"
	end
	outcomes.each do |result, n_of_times|
		puts "#{result}: #{n_of_times}"
	end
end
dice_outcomes(3,100)

def fibonacci(n)
	fib = [1, 1]
	while fib.length < n
		fib.push (fib[-1] + fib[-2])
	end
	puts fib
end
fibonacci(7)

def stock_picker(stock_array)
	profit = 0
	buy_index = -1
	days = []
	stock_array.each do |buy|
		buy_index += 1
		sell_index = buy_index - 1
		stock_array[buy_index..-1].each do |sell|
			sell_index += 1
			if sell - buy > profit
				profit = sell - buy
				days = [buy_index, sell_index]
			end
		end
	end
	puts days
end
stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])

def anagrams(word)
	dictionary = IO.readlines("enable.txt")
	possible_anagrams = []
	anagrams = []
	word_split = word.split ''
	dictionary.each do |dict_word|
		if dict_word.chomp.length == word.length && dict_word.chomp != word
			possible_anagrams.push dict_word.chomp
		end
	end
	possible_anagrams.each do |possible_anagram|
		checking_anagram = possible_anagram
		checking_anagram = checking_anagram.split ''
		word_split.each do |letter|
			if checking_anagram.include?(letter)
				index = checking_anagram.index(letter)
				checking_anagram.delete_at(index)
			end
		end
		if checking_anagram.length == 0
			anagrams.push possible_anagram
		end
	end
	puts anagrams
end
anagrams("pears")
anagrams("zygote")
