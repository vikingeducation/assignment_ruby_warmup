def roll_dice n
  sum = 0
  n.times { sum += [1,2,3,4,5,6].sample }
  sum
end

def dice_outcomes dice_number, roll_number
  all_rolls_sum = Hash.new{0}
  roll_number.times do
    all_rolls_sum[roll_dice dice_number] += 1
  end
  result_sorted = all_rolls_sum.sort_by{ |each_roll_sum, value| each_roll_sum }
  max_roll_length = all_rolls_sum.keys.max.to_s.length
  result_sorted.each do |each_roll_sum, value|
    puts "#{each_roll_sum}: ".ljust(max_roll_length + 1) + "#" * value
  end
  result_sorted
end
