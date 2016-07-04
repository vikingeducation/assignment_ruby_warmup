def roll_dice(rolls = 1)
  result = 0

  rolls.times do |roll|
    value = rand(1..6)
    result += value
    puts "Roll #{roll} returns #{value}"
  end
  result
end

puts roll_dice(4)
