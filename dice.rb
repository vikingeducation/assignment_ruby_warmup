def roll_dice dice=1
  result = 0
  dice.times { result += rand(1..6) }
  result
end

puts roll_dice
puts roll_dice(2)