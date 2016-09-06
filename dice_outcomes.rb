def roll_dice(x=1)
    y = rand(1..6)
    x==1 ? y:  y + roll_dice(x-1)
end

def dice_outcomes(dice_no,roll_times)
    rolls_storage=[]
    while roll_times>0
        rolls_storage << roll_dice(dice_no)
        roll_times -=1
    end
    rolls_storage.sort!
    unique_storage = rolls_storage.uniq
    scores={}
    unique_storage.each do |x|
        v=0
        rolls_storage.each do |y|
            v+=1 if x==y
        end
        scores[x]=v
    end
    scores.each do |k,v|
        k>9? puts("#{k}: #{'#'*v}"): puts("#{k}:  #{'#'*v}")
    end
end

dice_outcomes(3,100)

