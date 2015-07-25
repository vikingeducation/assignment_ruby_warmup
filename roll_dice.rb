input = 2

def roll_dice(num_of_dice=1)
  sum = 0

  num_of_dice.times do |num|
    roll = Random.new
    sum += roll.rand(1..6)
  end

  return sum
end

puts roll_dice(input)