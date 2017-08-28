roll_dice = 1 + rand(6)

def roll_dice(dice_num) #returns the sum of the outcomes of rolling each dice once in "dice_num" number of dices
  sum = 0
  dice_num.times do
    outcome = 1 + rand(6)
    sum += outcome
  end
  return sum
end


def dice_outcomes(dice_num, roll_times)

  hash = {}

  n = 1
  while n <= roll_times do
    sum = roll_dice(dice_num)
    if hash[sum] == nil
      hash[sum] = 1
    else
      hash[sum] += 1
    end
    n += 1
  end

  hash.each do |key,value|
    p "#{key}: #{value}"
  end
end

dice_outcomes(3, 100)
