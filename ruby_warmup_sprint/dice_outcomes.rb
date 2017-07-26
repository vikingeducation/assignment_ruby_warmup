def dice_outcomes(no_of_dice, no_of_times)
    x = 0
    outcomes_hash = {}
    while x < 100
        outcome = rand((no_of_dice)..(6*no_of_dice))
        if outcomes_hash.has_key?(outcome)
            outcomes_hash[outcome] += 1 
        else
            outcomes_hash[outcome] = 1 
        end
        x += 1
    end
    outcomes_hash.values.each do |n|
        str = ""
        n.times do
            str += "#"
        end
        puts str
    end
end

(dice_outcomes(3,100))