# Write a method roll_dice which returns the result of rolling N 6-sided dice where N is the input to the method (the default should be 1).

def roll_dice(qty_dice = 1)
  roll_results = []

  qty_dice.times do |result|
    roll_results << rand(1..6)
  end

  roll_results.reduce(:+)
end

roll_dice(2)