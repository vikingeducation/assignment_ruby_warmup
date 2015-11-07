def dice_outcome(dice, rolls)
    result = Hash.new(0)
    rolls.times do
        total = 0
        dice.times {total +=rand(1..6)}
        result[total] +=1
    end
    result = result.sort_by {|k, v| k}
    result.each do |k, v|
       p "#{k}:  " + "#"*v if k < 10
       p "#{k}: " + "#"*v if k >= 10
    end
    result
end