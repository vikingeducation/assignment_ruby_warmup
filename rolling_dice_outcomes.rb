# For an array of n dice thrown t times, create histogram of total score occurrences.

def dice_outcomes(n,t)
  # Initialize score occurrences to zero
  occurrences = []
  (n*6).times do |score|
    occurrences[score] = 0
  end
  t.times do |throw|
    score = roll_dice(n)    
# this was function created in previous exercise
#   occurrences[score-1] = occurrences[score-1] + 1
# "-1" because array is numbered from 0, not 1
    occurrences[score] = occurrences[score] + 1
  end
  puts "\n Number of dice: #{n}, number of throws: #{t}"
  puts "\n Score: Occurrences"
  puts "------------------"
  occurrences.each_with_index do |occurrence,score|
    if score < (n-1)
      next
    end
    if score < 9
      print " "
    end
    print "   #{(score+1)} : "   
    (1..occurrence).each do |symbol|
      print "#"
    end
    if occurrence > 0
      print "(", occurrence, ")"
    end    
    print "\n"
  end
  print "\n"
end

# End

def roll_dice(n)     
  score = 0            # n = number of dice
  n.times do |number|
    score = score + rand(1..6)
  end
  return score
end

# End

# Main program

print "\n"
print "Enter number of dice: "
number_of_dice = gets.chomp.to_i
if number_of_dice < 1
  number_of_dice = 1    # default value
end
print "Enter number of throws: "
number_of_throws = gets.chomp.to_i
if number_of_throws < 1
  number_of_throws = 1    # default value
end
print "\n ***************************************** \n"
dice_outcomes(number_of_dice, number_of_throws)

# End

