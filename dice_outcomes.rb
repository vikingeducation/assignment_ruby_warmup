def dice_outcomes(num_dice = 1, num_rolls = 1)
  numbers = {}
  num_rolls.times do |roll|
    number_rolled = 0
    num_dice.times do |dice|
      number_rolled += rand(6) + 1
    end
    if numbers[number_rolled] == nil
      numbers[number_rolled] = 1
    else
      numbers[number_rolled] += 1
    end
  end
	numbers = numbers.sort
	numbers.each do |key, value|
    puts "#{key}: #{"#" * value}"
  end
end

dice_outcomes(3, 100)
