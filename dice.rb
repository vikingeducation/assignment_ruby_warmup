def roll_dice(number_of_dice = 1)
  #outcome = sum of all rolled sides
  outcome = 0
  number_of_dice.times do
    side = [*1..6].sample
    outcome += side
  end
  outcome
end

def dice_outcomes(number_of_dice, times_to_roll)
  #create array of roll outcomes where array.length == times_to_roll
  tracked_outcomes = [ ]
  times_to_roll.times do
    tracked_outcomes << roll_dice(number_of_dice)
  end
  #create hash pairing roll total => frequency of total's occurence
  counts = Hash.new(0)
  tracked_outcomes.sort.each do |outcome|
    counts[outcome] += 1
  end
  #print visual chart of how many times an outcome was rolled
  counts.each do |outcome, count|
    print "#{outcome}: "
    count.times do
      print "#"
    end
    print "\n"
  end
end