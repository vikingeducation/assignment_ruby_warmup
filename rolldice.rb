def roll_dice(n=1)
  result = 0
  dice = rand(6) + 1
  n.times do 
    result += dice
  end
  return result
end

puts roll_dice(4)
puts roll_dice(2)
puts roll_dice