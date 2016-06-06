########################################################
# stockpicker.rb                                       #
#                                                      #
# display the best time to buy/sell as stock based     #
# on an array of stock prices                          #
#                                                      #
# Coded by: Stephen Kilgore                            #
########################################################

def stock_picker(stock_array)
	answer = []
	return stock_array.rindex(stock_array.max)
end

print "#{stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])} \n"