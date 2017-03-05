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

	puts fibo_nums
end

# ============
# Stock picker
# ============

# For each stock price, find the stock price that comes after it that has the biggest surplus

def stock_picker(stock_prices)
	largest_price_diff = 0
	best_buying_day, best_selling_day = 0
	
	stock_prices.each_with_index do |buying_price, buying_price_index|
		prices_left = stock_prices.length - (buying_price_index + 1)
	
		prices_left.times do |i|
			selling_price = stock_prices[buying_price_index + i + 1]
			price_diff = selling_price - buying_price
			
			if price_diff > largest_price_diff
				largest_price_diff = price_diff
				best_buying_day = buying_price_index
				best_selling_day = buying_price_index + i + 1
			end
		end
	end
	puts "[#{best_buying_day}, #{best_selling_day}]"
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])

# ===============
# Anagram Testing
# ===============