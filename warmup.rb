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
4:  #
5:  #
6:  ####
7:  ###
8:  #################
9:  ###########
10: #########
11: ############
12: ##########
13: ##########
14: #########
15: ######
16: ##
17: ##
18: #
#=> {3=>2, 4=>1, 5=>1, 6=>4, 7=>3, 8=>17, 9=>11, 10=>9, 11=>12, 12=>10, 13=>10, 14=>9, 15=>6, 16=>2, 17=>2, 18=>1} 
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

