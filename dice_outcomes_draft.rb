def roll_dice(x=1)
    y = rand(1..6)
    x==1 ? y:  y + roll_dice(x-1)
end

def dice_outcomes(dice_no,roll_times)
    scores={}
    while roll_times>0
        counter=0
        roll=roll_dice(dice_no)
        scores.each do |k,v|
            counter+=1
            if k==roll
                v+=1
                break
            elsif scores.length==counter
                scores[1]=roll
            end
        end
        roll_times -=1
    end
    scores.each do |k,v|
        k>9? puts("#{k}: #{'#'*v}"): puts("#{k}:  #{'#'*v}")
    end
end

dice_outcomes(3,100)

