#returns result of rolling N 6-sided dice
def roll_dice(n = 1)
  dice = [1,2,3,4,5,6]
  result = 0

  #randomly roll n die and sum to result
  n.times do
    result += dice.sample
  end

  result
end

#roll_dice method tests
/puts roll_dice(4)
puts roll_dice(2)
puts roll_dice/




#takes dice amount, number of rolls
#outputs text histogram of possible sums
def dice_outcomes(dice_num, roll_num)
  max_sum = dice_num * 6 + 1
  sum_histogram = Array.new(max_sum, 0)

  #roll dice_num and save sum to sum_histogram
  roll_num.times do
    sum_histogram[roll_dice(dice_num)] += 1
  end

  #print the histogram
  index = dice_num
  while index < max_sum
    print "#{index}:\t"
    sum_histogram[index].times do
      print "#"
    end
    print "\n"
    index += 1
  end
end

#dice_outcomes method test
/dice_outcomes(3,100)/
