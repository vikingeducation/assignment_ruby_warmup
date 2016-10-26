def roll_dice dice=1, sides=6
  sum = 0
  dice.times do
    sum += rand(sides)+1
  end
  return sum
end


def dice_outcomes dice=1, rolls=1
  outcomes = {}
  (1*dice..6*dice).each {|number| outcomes[number]=0}
  rolls.times do
    outcomes[roll_dice(dice)]+=1
  end
  outcomes.each {|number,occurrences| p "#{number}: #{'#'*occurrences}"}
  return outcomes
end

def fibonacci max=1
  fib=[1,1]
  if max == 1
    return [1]
  elsif max == 2
    return fib
  end
  (2...max).each {|n| fib[n]= fib[n-1] + fib[n-2]}
  return fib
end



def stock_picker stocks
  max = 0
  best = [0,1]
  (0...stocks.length-1).each do |buy|
    (buy+1..stocks.length-1).each do |sell|
      diff = stocks[sell] - stocks[buy]
      if diff > max
        max = diff
        best = [buy,sell]
      end
    end
  end
  return best
end

def anagram keyword="pears"
  keyword.upcase!
  dictionary = []
  File.foreach("enable.txt") {|word| dictionary << word.upcase.chomp}
  sorted = keyword.split("").sort.join
  dictionary.select {|anagram| sorted == anagram.split("").sort.join && anagram != keyword}
end
