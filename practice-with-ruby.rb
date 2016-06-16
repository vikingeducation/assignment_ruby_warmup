def roll_dice(rolls = 1)
	sum = 0
	counter = 0
	while counter < rolls
		sum += 1 + rand(6)
		counter += 1
	end
	sum
end

def dice_outcomes(dice, times)
	outcomes = {}
	counter = 0
	while counter < times
		sum = roll_dice(dice)
		if outcomes[sum] == nil
			outcomes[sum] = 1
		else
			outcomes[sum] += 1
		end
		counter += 1
	end
	outcomes.keys.sort.each do |number|
		print "#{number}: \t"
		counter = 0
		while counter < outcomes[number]
			print "#"
			counter += 1
		end
		print "\n"
	end
	outcomes
end

def fibonacci(number)
	fib_array = [1]
	counter = 1
	while counter < number
		if fib_array == [1]
			fib_array << 1
		else
			fib_array << (fib_array[-1] + fib_array[-2])
		end
		counter += 1
	end
	fib_array
end

def stock_picker(price_array)
	greatest_sum = price_array[1] - price_array[0]
	greatest_pair = []
	price_array.each_with_index do |price, index|
		counter = index + 1
		while counter < price_array.size
			if (price_array[counter] - price) > greatest_sum
				greatest_sum = (price_array[counter] - price)
				greatest_pair = [index, counter]
			end
			counter += 1
		end
	end
	greatest_pair
end

def anagrams(word)
	dictionary = ["APERS","PEARS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]
	anagrams = []
	word_array = word.split("")
	permutations = word_array.permutation(word.length).to_a
	permutations.each do |word|
		if dictionary.include?(word.join.upcase)
			anagrams << word.join.upcase
		end
	end
	anagrams.delete(word.upcase)
	anagrams.sort
end