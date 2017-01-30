# roll_dice takes an integer as argument and roll a six-sided die
# as many times as the passed in argument.

def roll_dice(dice = 1)
    result = 0
    dice.times do |index|
        random_number = rand(1..6)
        result += random_number
        puts "roll \#" + " #{index + 1}:".rjust(5) + " #{random_number}"
    end
    puts "Total Result is #{result}"
end

#roll_dice(10)




def dice_outcomes(dice=1, rolls=1)
    results = Hash.new(0)
    rolls.times do
        sum = 0
        dice.times do
            sum += rand(1..6)
        end
        results[sum] += 1
    end
    ((1*dice)..(6*dice)).each do |index|
        puts "#{index} : ".rjust(5) + "\#"*results[index]
    end
end

#dice_outcomes(3, 100)


