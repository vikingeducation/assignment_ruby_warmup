def roll_dice (num=1) 
  total_roll = 0
  num.times do 
    total_roll += (1..6).to_a.sample
  end
  return total_roll
end

def dice_outcomes(dice=1,rollno=1) 
  visual_chart_hash = Hash.new("")
  rollno.times do 
    result = roll_dice(dice)
    visual_chart_hash[result.to_s.to_sym] += "#"
  end
  final_return = Hash[visual_chart_hash].sort
  puts final_return
  return final_return
end

dice_outcomes(3,100)