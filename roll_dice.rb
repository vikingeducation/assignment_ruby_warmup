def roll_dice(n=1)
  result = 0
  n = n.to_i
  n.times do 
    result += rand(6) + 1
  end
  puts result
end
