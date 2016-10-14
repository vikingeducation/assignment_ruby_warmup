def roll_dice(n = 1)
  rolls = 0
  n.times do
    rolls += rand(6) + 1
  end
  return rolls
end
 puts roll_dice (4)
 puts roll_dice (2)
 puts roll_dice
