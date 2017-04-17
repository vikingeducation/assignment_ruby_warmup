def roll_dice(num_dice=0)
  dice_numbers= [1,2,3,4,5,6]
  sum=0
    num_dice.times do
    sum += dice_numbers.sample
  end
  return sum
end

def dice_outcomes(num_dice,roll_times)
  dice_results= []
  roll_times.times do
    dice_results << roll_dice(num_dice)
  end
  dice_results.sort!
  total_counts=Hash.new(0)
  dice_results.each {|key| total_counts[key] += 1}
  total_counts.each do |key, value|
    if value==1
      puts "#{key} was rolled #{value} time"
    else
      puts "#{key} was rolled #{value} times"
    end
  end
end

puts "Please select number of dice to roll"
num_dice=gets.chomp.to_i
puts "Please select a number of times to roll them"
roll_times=gets.chomp.to_i
puts ""
puts ""
dice_outcomes(num_dice,roll_times)
