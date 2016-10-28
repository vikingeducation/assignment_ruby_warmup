puts "How many dice you wanna roll? (Use an integer > 0)"
n = gets.chomp.to_i

def roll_dice(n = 1)
  dice_result = 0
  n.times {
    dice_result += rand(6) + 1
  }
  puts dice_result
end

roll_dice(n)