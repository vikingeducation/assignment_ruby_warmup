def roll_dice(n=1)
  total = 0
  n.times do |i|
    total += rand(1..6)
  end
  total
end

puts roll_dice
puts roll_dice(2)
puts roll_dice(10)
puts roll_dice(50)
puts roll_dice(100)
