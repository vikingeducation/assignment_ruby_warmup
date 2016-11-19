def dice_outcomes(number_of_dice, number_of_times)

#generating keys for frequencies hash
  keys = (number_of_dice..(number_of_dice*6)).to_a
  frequencies = Hash[keys.map { |x| [x, 0] } ]

# generating values for frequencies hash
  number_of_times.times do |outcome|
    outcome = 0
    number_of_dice.times { outcome += (1 + rand(6))}
    frequencies[outcome] += 1
  end

#print results in visual chart
  frequencies.each do |outcome, frequency|
    puts "#{outcome}:" + ('#' * frequency)
  end

end


dice_outcomes(1, 50)