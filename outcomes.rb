def dice_outcomes(number_of_dice, number_of_times)

  frequencies = Hash.new(0)

# generating values for frequencies hash
  number_of_times.times do |outcome|
    outcome = number_of_dice + rand(number_of_dice*6)
    frequencies[outcome] += 1
  end

  puts frequencies.keys
  puts frequencies.values

end


dice_outcomes(5, 100)