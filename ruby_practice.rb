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
#roll dice and add to hash/increment
  rolls.times do
    face = roll_dice(dice)
    outcomes[face] ? outcomes[face]+=1 : outcomes[face]=1
  end
#sort results and output graphic rep
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


def stock_picker(days)
  buy_day = 0
  buy = 0
  sell_day = 0
  profit = 0
  while buy < days.length-1
    (buy..days.length-1).each do |sell|
      #checks if profit is optimal & sets days
      if(days[sell]-days[buy] > profit)
        profit = days[sell]-days[buy]
        buy_day = buy
        sell_day = sell
      end
    end
    buy += 1
  end
  puts "Buy on day #{buy_day}, sell on day #{sell_day}"
end


def anagrams(word)
  dictionary = File.read("enable.txt").split
  anagram = word.chars.to_a.sort
  ans = []
  dictionary.each do |entry|
    if(entry.chars.to_a.sort == anagram && entry != word)
      ans.push(entry)
    end
  end
  print ans
end

#testing
dice_outcomes(3, 100)
fibonacci(7)
stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
puts anagrams("pears")