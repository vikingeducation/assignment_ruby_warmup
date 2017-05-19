def roll_dice(n)
  sum = 0
  n.times do |roll|
    roll = 4
    sum += roll
  end
  sum
end

puts roll_dice(5)
