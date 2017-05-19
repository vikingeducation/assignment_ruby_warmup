class Die
  def roll
    rand(6) + 1
  end
end

dice = [Die.new, Die.new]

dice.each do |die|
  puts die.roll
end

