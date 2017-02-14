require 'pry'
def roll_dice(n = 1)
	#gets random number
	puts n * rand(1..6)
end

def dice_outcomes(dice, total_rolls)
	dice_hash_table = Hash.new(0)
	#initiate empty array
	dice_total_array = []
	#rolls dice x amount of times
	total_rolls.times do |i|
      #gets random number and assigns to variable
	  die_total = dice * rand(1..6)
      #puts roll of die into array
	  dice_total_array << die_total
      end
		puts dice_total_array
	#puts dice_total array into hash and frequency of outcome
	dice_total_array.each {|dice| dice_hash_table[dice] += 1}
		puts dice_hash_table
	dice_hash_table.each do |key, value|

		puts "#{key}:#{'#' * value}"
	end

end
dice_outcomes(3, 10)

def fibonacci(n)
	results = []
	n.times do |i|
		
		if i < 2
			results << i
		else
			results << results[-1] + results[-2]
		end
	end 
	puts results
end

def stock_picker(stocks)

end


def anagrams(word)
	#splits string into array and sorts it alpabetically
	sorted_word = word.split("").sort
	#creates empty array
	anagrams_array = []
	#gets enable file and puts it into an array
	dictionary = File.open("enable.txt").readlines
	#iterates through array
	dictionary.each do |line|
		#binding.pry
		#splits and sorts word in array and matches w/ sorted_word
		if line.split("").sort == sorted_word
			#pushes word into array
		 	anagrams_array.push(line)
		 end 
	end
		

end
anagrams("pear")






