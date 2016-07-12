def dice_outcome(dice, roll_times)
  data = {}

  1.upto(roll_times) do |i|
    data[i] = rand(1..6) * dice
  end

  data.each do |k, v|
    puts "#{k}: #{'#' * v}"
  end
end

puts dice_outcome(3, 10)
