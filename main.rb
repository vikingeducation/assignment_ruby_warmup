# ============
# Rolling dice
# ============

def roll_dice(dice_rolls = 1) 
  result = 0
  dice_rolls.times do 
    result += rand(1..6)
	end
	return result
end

# =====================
# Rolling dice outcomes
# =====================


def dice_outcomes(no_of_dice, dice_rolls)
	outcomes = {}
	dice_rolls.times do
		sum = roll_dice(no_of_dice)
		puts outcomes[sum]
		outcomes[sum] << "#"
	end
	puts outcomes
end

# =========
# Fibonacci
# =========

def fibonacci(n)
	fibo_nums = [1, 1]

	(n-2).times do 
		fibo_nums << fibo_nums[-2] + fibo_nums[-1]
	end

	fibo_nums
end

# ============
# Stock picker
# ============

# For each stock price, find the stock price that comes after it that has the biggest surplus

def stock_picker(stock_prices)
	largest_price_diff = 0
	best_days = []
	
	stock_prices.each_with_index do |buying_price, buying_price_index|
		prices_left_to_check = stock_prices.length - (buying_price_index + 1)
	
		prices_left_to_check.times do |i|
			selling_price = stock_prices[buying_price_index + i + 1]
			price_diff = selling_price - buying_price
			
			if price_diff > largest_price_diff
				largest_price_diff = price_diff
				best_days[0] = buying_price_index
				best_days[1] = buying_price_index + i + 1
			end
		end
	end

	best_days
end

# ===============
# Anagram Testing
# ===============

def anagrams(input)
  anagrams = []
  input = input.downcase
  possible_words = File.read("enable.txt").split(/\n/)

  possible_words.each do |word|
    if (word.chars.sort.join == input.chars.sort.join) && (word != input)
    	anagrams << word.upcase
    end
  end  

  anagrams
end

anagrams("pears")