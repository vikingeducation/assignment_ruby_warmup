def dice_outcomes(number_of_dice, roll_times)
  dice = [1,2,3,4,5,6]
  results_of_roll = []
  products = {}
  roll_times.times do
    results_of_roll << dice.sample(number_of_dice)
  end
    while results_of_roll.length > 0
      sum = 0
      results_of_roll[0].each {|num| sum += num}
      if products.has_key?(sum) != true
        products[sum] = 1
      else
        products[sum] += 1
      end
      results_of_roll.delete_at(0)
    end
    products.each {|key,value| print "#{key}: #{value}\n"}
end


dice_outcomes(3, 100)
