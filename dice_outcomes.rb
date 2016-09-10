def roll_dice(x=1)
    y = rand(1..6)
    x==1 ? y:  y + roll_dice(x-1)
end

def dice_outcomes(dice_no=1,roll_times=100)
    rolls_storage=[]
    roll_times.times  { |x| rolls_storage << roll_dice(dice_no) }
    unique_storage = rolls_storage.sort.uniq
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
    scores
end

dice_outcomes(3,100)

