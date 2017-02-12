# Rolling Dice N 6-sided dice, default should be 1

def roll_dice(n = 1)
	rand(n..n * 6)
end


# Rolling Dice Outcomes

def dice_outcomes(n, i)
	dice_hash = {}
	a = n
	while (a <= n * 6) do
		dice_hash[a] = 0
		a += 1
	end
	
	i.times do 
		roll_num = roll_dice(n)
		dice_hash[roll_num] += 1
	end
	
	b = n
	while (b <= n * 6) do
		puts "#{b}: #{"#" * dice_hash[b]}"
		b += 1
	end
	dice_hash
end

# Output fibonacci sequence up to specified number

def fibonacci(num)
	fib_arr = []
	
	if num == 1 
		fib_arr = [1]
	elsif num > 1
		fib_arr = [1,1]
		i = 2
		while (i < num)
			fib_arr << fib_arr[-1] + fib_arr[-2]
			i += 1
		end
	end
	fib_arr
end


# Pick most profitable pair of days to first buy stock and then sell stock
def stock_picker(array)
	i = 0
	diff = 0
	pair_arr = []
	while (i < array.length - 1) do
		if (array[(i + 1)..-1].max - array[i] > diff)
			diff = array[(i + 1)..-1].max - array[i] 
			pair_arr = [i , array.index(array[(i + 1)..-1].max)]
		end
		i += 1
	end
	pair_arr
end

#Find Anagrams in given word

def anagrams(word)
	perm_array = []
	ana_array = []
	words_list= ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]
	word.chars.permutation.to_a.each do |item|
		perm_array << item.join("").upcase
	end

	perm_array.each do |item|
		ana_array << item if words_list.include?(item)
	end
	ana_array.sort
end






	









