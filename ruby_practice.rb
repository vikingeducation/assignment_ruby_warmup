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
    outcomes[face] ? outcomes[face]+=1 : outcomes[face]=1
  end

  outcomes.sort_by{|die, num| die}.each do |die, num|
    puts "#{die}: " + "#"*num
  end

  outcomes
end


def fibonacci(max)
  fib = [1,1]
    (0..max).each do |i|
      fib.push(fib[-2]+fib[-1])
    end
    p fib
end

#use each with index
def stock_picker(days)
  buy_day = 0
  buy = 0
  sell_day = 0
  profit = 0
  while buy < days.length-1
    (buy..days.length-1).each do |sell|
      if(days[sell]-days[buy] > profit)
        profit = days[sell]-days[buy]
        buy_day = buy
        sell_day = sell
        puts profit
      end
    end
    buy += 1
  end
  puts [buy_day, sell_day]
end


def anagrams()
  
end

puts dice_outcomes(3, 10)