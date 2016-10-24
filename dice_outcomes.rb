def roll_dice(num=1)
  dice_rolls = []
  total = 0

  num.times do |dice|
    dice_rolls.push(rand(6)+1)
  end

  dice_rolls.each{|x| total+=x}
  return total
end

def dice_outcomes(num_dice, total_rolls)

  display = {}
  min_total = num_dice*1
  max_total = num_dice*6

  (min_total..max_total).each do |individual|
    display[individual] = 0
  end

  total_rolls.times do
    tally = roll_dice(num_dice)
    display[tally] += 1
  end

  sorted_keys = display.sort
  
  sorted_keys.each do |individual, freq|
    puts "#{individual}: #{"#" * freq}"
  end
end

dice_outcomes(3,100)