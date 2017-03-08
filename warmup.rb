#warmup.rb

def rolldice(dies)
	outcome = rand((1*dies)..(6*dies))	
end


def dice_outcomes(dies, roll)
	results = []
	roll.times do
	  outcome = rolldice(dies)	
	  results << outcome
	  
	end
	list = results.sort
	print list 
	puts "\n"
	list.each do |x|
		recurrence = list.count(x)
		puts "#{x} => #{recurrence}"
		#puts "This is list before delete = #{list}"
		list.delete(x)
		list.unshift(x)
		#puts "This is list after delete = #{list}"
	end
end



def fibonacci(nums)
	first = 0
	second = 1
	outcome = 1
	fibonacci_numbers = []
	nums.times do
		fibonacci_numbers << outcome
		outcome = first + second
		first = second
		second = outcome
	end
	fibonacci_numbers
end


def stock_picker(prices_array)
	first_array = prices_array.dup		#for getting the first number in solution
	second_array = prices_array.dup		#for getting the second number in solution
	highest_diff = 100000
	first_num = "" 								#first number in solution
	second_num = "" 							#second number in solution
	until first_array.empty? do
		x = first_array.shift 			#takes the first number in array out		
		first_array.each do |z| 		#subtracts remaining numbers from the first number			
			diff = x - z
			if diff < highest_diff
				first_num = x						#gets the first number by taking the biggest difference
				highest_diff = diff
			end					
		end		
	end
	
	#puts second_array.index(first_num)
	first_location = second_array.index(first_num)						#gets location of first number
	remaining_array = second_array.shift(first_location + 1)  #removes all numbers from first to beginning of array
	second_num = second_array.max 														#gets secnd number
	second_location = prices_array.index(second_num)					#gets location of second number
	solution = [first_location, second_location]
	
end


def anagrams(input)			
	solution = []
	input_array = input.split("")
	length = input_array.length
	possible_anagrams = []
	possible_anagrams_array = input_array.permutation.to_a 	#makes array of permutaions in characters
	#makes permutaions into strings
	possible_anagrams_array.each do |sub_array|							
		x = sub_array.join("")
		possible_anagrams << x																							#creates array of permutations strings
	end	
	#compares possible anagrams to words in enable.txt
	possible_anagrams.each do |anagram|
		anagram = anagram + "\n"
		File.open("enable.txt", "r") do |file|		#iterates through file for match
			file.readlines.each do |word|			
				if anagram == word
					anagram =anagram.chop								#removes the line escape characters
					solution << anagram
				end
			end
		end
	end
	solution.delete(input)
	if solution == [] 
		solution = "No anagrams found for \"#{input}\"!"
	else
	  "Anagrams for \"#{input}\": #{solution}"
	end
end	

puts "Assignment 1: Single Die"
puts rolldice(4)
puts "\n"


puts "Assignment 2 Mulitple Dies"
dice_outcomes(4, 40)
puts "\n"

puts "Assignment 3: Fibonacci numbers"
print fibonacci(10)
puts "\n"
puts "\n"
puts "Assignment 4: Stockpicker"
puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
puts "\n"
puts "\n"
puts "Assignment 5: Anagrams"
puts anagrams("pears")
print anagrams('zygote')
puts "\n"