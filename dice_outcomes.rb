def dice_outcomes(number_of_dice,number_of_rolls)
  results = []
  highest = 6 * number_of_dice

  (number_of_rolls).times do 
    results.push(rand(number_of_dice..highest))
  end

  result_count = Hash.new(0)
  results.each { |result| result_count[result] += 1 }

  (number_of_dice..(number_of_dice*6)).each do |result|
      if result_count.key?(result)
        puts "#{result}: " + "#" * result_count[result]
      else
        puts "#{result}:"
      end
  end
end

dice_outcomes(6,300)