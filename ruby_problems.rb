
# Rolling Dice

def roll_dice(number_of_dice = 1)
  return_value = 0
  (1..number_of_dice).each do
    dice_value = rand(1..6)
    # puts dice_value
    return_value += dice_value.to_i
    # puts return_value
  end
  return return_value
end

# roll_dice(4)

def dice_outcomes(number_of_dice, number_of_roles)
  possible_numbers = {}
  final_dice_value = 0

  (1..number_of_roles).each do |i|
    
    (1..number_of_dice).each do 
      dice_value = rand(1..6)
      final_dice_value += dice_value
    end

    if(possible_numbers.include?(final_dice_value))
      possible_numbers[final_dice_value] += "#"
    
    else
    possible_numbers[final_dice_value] = "#"
    end
    
    final_dice_value = 0
  end

  possible_numbers.sort.each do |key, value|
    puts "#{key}: #{value}"
  end
  # puts "#{possible_numbers.keys}: #{possible_numbers.values}"
end

dice_outcomes(2, 100)