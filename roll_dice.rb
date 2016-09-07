def roll_dice(x=1)
    y = rand(1..6)
    x==1 ? y:  (y + roll_dice(x-1))
end

roll_dice(4)
roll_dice(2)
roll_dice