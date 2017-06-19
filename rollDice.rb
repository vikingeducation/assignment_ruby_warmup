def roll_dice(number_of_dice=1)
  puts("rolled #{1 + rand(6*number_of_dice)}")
end

def dice_outcomes(number_of_dice, number_of_rolls)
  results = Hash.new
  # maximum and minumim roll results
  max = number_of_dice * 6
  min = number_of_dice
  # fill hash with default value
  max.times do |i|
    if (i+min > max)
      results[max] = 0
    else
      results[i+min] = 0
    end
  end

  #roll the dice
  number_of_rolls.to_i.times do
    index = min + rand(6*number_of_dice)
    # make sure it stays within range
    # reduce by min to keep results legit
    if (index > max)
      index -= min
    end
    results[index] += 1
  end

  # print the results out
  results.each do |i|
    print("#{i[0]} : ")
    i[1].times do
      print"#"
    end
    puts("")
  end
  print (results)
end
