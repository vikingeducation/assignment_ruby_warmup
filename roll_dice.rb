def roll_dice(rolls=1)
  roll_array = []
  rolls.times do
    roll_value = rand(6) + 1
    roll_array << roll_value
  end
  total = 0
  roll_array.each do |roll|
    new_total = total + roll
    total = new_total
  end
  total
end
puts roll_dice(4)
puts roll_dice(2)
puts roll_dice