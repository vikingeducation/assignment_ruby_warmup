########################################################
# fibonacci.rb                                         #
#                                                      #
# display fibonnaci sequence to n digit   			   #
#                  									   #
#                                                      #
# Coded by: Stephen Kilgore                            #
########################################################

def fibonnaci(num_times)
	
	answer = [1, 1] # the beginning of the fibonacci sequence is static. Fill it out to make our job easier
	(num_times-2).times do   # subtract two from number of iterations because we pre-populated the array with initial values.
		answer.push(answer[-1]+answer[-2])	
	end
	return answer		
end

# display the first 25 fibonnaci numbers.
print "#{fibonnaci(25)} \n"