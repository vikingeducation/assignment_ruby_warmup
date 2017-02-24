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

puts fibonacci(7)

=begin
	
Stock Picker

Write a method stock_picker which takes an array of stock 
prices (prices on days 0, 1, ...) and outputs the most profitable 
pair of days on which to first buy the stock and then sell the stock, 
for example:

> stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
#=> [2, 6]

=end








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