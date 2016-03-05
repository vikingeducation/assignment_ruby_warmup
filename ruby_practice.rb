def roll_dice(dice=1)
  counter = 0
  dice.times do
    counter += rand(6)+1
  end
  return counter
end


def dice_outcomes(dice, rolls)
  outcomes = {}
  face = 0
  rolls.times do
    face = roll_dice(dice)
    if outcomes[face]
      outcomes[face]+=1
    else
      outcomes[face]=1
    end
  end
  outcomes.sort_by{|die, num| die}.each do |die, num|
    print "#{die}: "
    num.times do
      print '#'
    end
    puts
  end
  return outcomes.sort_by{|die, num| die}
end



def fibonacci(max)
  fib = [1,1]
    (0..max).each do |i|
      fib.push(fib[-2]+fib[-1])
    end
    p fib
end


fibonacci(5)
