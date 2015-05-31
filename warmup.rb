def roll_dice(num=1)
  total = 0
  num.times do |i|
    total += (1..6).to_a.sample
  end
  return total
end
