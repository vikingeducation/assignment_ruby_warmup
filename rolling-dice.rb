def roll_dice n
  sum = 0
  n.times { sum += [1,2,3,4,5,6].sample }
  sum
end
