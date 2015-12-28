# Rolling Dice

def single_roll
  (1..6).to_a.sample
end

def roll_dice(number_of_dice=1)
  dice_rolled = 0
  total_score = 0
  while dice_rolled < number_of_dice
    total_score += single_roll
    dice_rolled += 1  
  end
  return total_score
end

def roll_dice_using_times(number_of_dice=1)
  total_score = 0
  number_of_dice.times do |number_of_dice|
    total_score += single_roll
  end
  return total_score
end



# Rolling Dice Outcomes
"""
number_of_dice: how many dice you're rolling each time
number_of_rolls: how many times you roll all dice
return: list of all possible totals with the number of occurrences shown as a # sign

example: 
rolling_dice(3, 100)
  3: #
  4: ###
  5: #####
  6: ....
  18: ##

step 1, make_outcomes: create a hash of all possible totals, min = number_of_dice * 1, max = number_of_dice * 6

step 2: run single_roll function number_of_rolls times; each time it runs, add a # to the value whose key matches the total
"""
def make_outcomes(number_of_dice)
  outcomes = {}
  start = number_of_dice 
  max_total = number_of_dice * 6
  while start <= max_total
    outcomes[start] = ""
    start += 1
  end
  return outcomes
end

def make_outcomes_with_each(number_of_dice)
  outcomes = {}
  dice_array = (number_of_dice..(number_of_dice*6)).to_a
  dice_array.each do |total|
    outcomes[total] = ""
  end
  return outcomes
end


def rolling_dice_outcomes(number_of_dice, number_of_rolls)
  outcomes = make_outcomes(number_of_dice)
  i = 0
  while i < number_of_rolls
    single_roll = roll_dice(number_of_dice)
    outcomes[single_roll] += "#"
    i += 1
  end
  return outcomes
end
