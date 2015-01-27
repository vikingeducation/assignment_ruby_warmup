def roll_dice(dice=1)
  sum = 0
  dice.times do
    sum += die_roll
  end
  sum
end

def die_roll
  rand(6)+1
end

def dice_outcomes(dice,rolls)
  lowest_score = dice
  highest_score = dice * 6
  histogram = {}
  (lowest_score..highest_score).each do |score|
    histogram[score] = 0
  end
  rolls.times do
    score = roll_dice(dice)
    histogram[score] += 1
  end
  (lowest_score..highest_score).each do |score|
    puts "#{score}: #{" " if score < 10}#{"#" * histogram[score]}"
  end
end