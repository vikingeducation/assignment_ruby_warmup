def roll_dice(n=1)
  results = []
  total = 0

  n.times do 
    results.push(rand(1..6))
  end

  results.each {|roll|total+=roll}
  return total

end


puts roll_dice
puts roll_dice(6)