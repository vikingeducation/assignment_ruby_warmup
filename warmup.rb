=begin
	
Write a method roll_dice which returns the result of 
=end
def rolldice(dies)
	outcome = rand((1*dies)..(6*dies))	
end

p "Assignment 1"
puts rolldice(4)
puts "\n"

=begin
Now write a method dice_outcomes which takes the number 
of dice to roll and the number of times to roll them, 
then outputs a visual chart of how many times each 
possible number comes up. 
For example:

> dice_outcomes(3,100)
3:  ##

#=> {3=>2, 4=>1, 5=>1, 6=>4, 7=>3, 18=>1} 
=end
p "Assignment 2"
def dice_outcomes(dies, roll)
	outcome = 0
	results = []
	roll.times do
	  outcome = rand((1*dies)..(6*dies))	
	  results << outcome
	  outcome = 0
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

dice_outcomes(4, 40)
puts "\n"

=begin
	
Fibonacci

Write a method fibonacci which outputs the Fibonacci Sequence 
members out to the specified number of members. For example:

> fibonacci(7)
#=> [1, 1, 2, 3, 5, 8, 13]
	
=end
p "Assignment 3"
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
	print fibonacci_numbers
end

puts fibonacci(10)
puts "\n"
=begin
	
Stock Picker

Write a method stock_picker which takes an array of stock 
prices (prices on days 0, 1, ...) and outputs the most profitable 
pair of days on which to first buy the stock and then sell the stock, 
for example:

> stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
#=> [2, 6]

=end
p "Assignment 4"
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

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
puts "\n"

=begin
Anagram Testing

Write a method anagrams which returns an array of anagrams 
that can be made with the specified string. Assume the 
input is only a single word (e.g. "loot" not "William Shakespeare").

Download enable.txt, a popular Scrabble dictionary, 
and load it in as your dictionary of choice. If you haven't 
encountered Ruby's file I/O yet, you can test your method 
by simply providing an array of known anagrams like those 
below to check that it works properly.

You can use Dir.pwd to output the current directory. If you can't find 
the dictionary, double check the directory you're executing your script 
from within.

Example:

# Note: "pears" doesn't appear in the output
> anagrams("pears")
# => ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]

> anagrams("zygote")
#=> []
Finishing Up

When you're finished with all tasks, push your changes up to your fork (aka $ git push origin master).
To submit your assignment, create a pull request from your fork to the main upstream repository.
	
=end

p "Assignment 5"

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
	print solution
end	


puts anagrams("pears")
