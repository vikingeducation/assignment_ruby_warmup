=begin
Write a method stock_picker which takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable pair of days on which to first buy the stock and then sell the stock, for example:
=end

# PROGRAM stock_picker(array)
def stock_picker(array)
# the first day will need to be before the last element
day1 = 0
day2 = 1
gains_and_days_hash = Hash.new(0)

# starting at the first day
while day1 < (array.count-2)
	# go through each item and subtract
	day2 = day1 + 1
	while day2 < (array.count-1) do
		# store in a hash the difference (key:diff value:[idx,idx])
		result = (array[day1]-array[day2])
		gains_and_days_hash[-(result)] = ([day1, day2])
		day2 += 1
	end
	day1 += 1
end
	# push those items into a hash with their index as the key
	# when the biggest gain is found
	# we need the index of the days we subtracted
  print "Best days are: #{gains_and_days_hash.max}"
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])