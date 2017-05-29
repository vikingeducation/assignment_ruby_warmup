def roll_dice(n = 1)
  sum = 0
  n.times do
  	sum += 1 + rand(6)
  end
  sum
end

p roll_dice(5)

