class Die
  def roll_dice
    rand(6) + 1
  end
end

dice = [Die.new, Die.new, Die.new]

dice.each do |dice|
  puts dice.roll_dice
end


