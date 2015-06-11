

def roll_dice(numb=1) 
  dice=0;
  numb.times do 
    dice+=rand(1..6);
  end
  return dice;
end



def dice_outcomes(dice_amount, numb)
  chart=Hash.new(0)
  dice_amount.times do
    chart[roll_dice(numb)]+=1;
  end
  
  chart.sort.each { |key, value| 
    puts "#{key}: #{"#"*value}"
    };
end

dice_outcomes(20, 1);