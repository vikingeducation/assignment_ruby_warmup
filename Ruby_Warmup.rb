
#  Documents/Viking/Ruby/Ruby_Warmup

def roll_dice(n = 1)
  results = 0
    while n > 0
      results += 1 + rand(6)
      puts "roll count = #{n.to_s}, and results = #{results.to_s}"
      n -= 1
    end
end

#roll_dice(4)
#roll_dice(2)

def dice_outcomes(dice, rolls)
  tracker = 0
  outcomes = []
  while rolls > tracker
    growth = 0
    outcome = 0
    while dice > growth
      outcome += 1 + rand(6)
      growth += 1
    end
    outcomes.push(outcome)
    tracker += 1
  end
puts " The result was #{outcomes.to_s} "
    chart = []
    gauge = 0
    while outcomes.length > gauge
      index = outcomes[gauge]
      if !chart.include?(index)
        chart.push(index)
      end

      if chart.include?(index)
        if index != index.to_s
          chart.select! { |index| index = "#{index.to_s}: " }
        end
        chart.select! { |index| index = "#{index}#" }
      end

      gauge += 1
    end
puts "the chart looks like this #{chart}"
end

=begin
#how output array should look
puts array = [ "1: #",
   "2: #####"]
=end

array = []
limit = 0
base = [4, 5, 6, 1, 4, 2, 3, 4]
arr = []

# loop through the values in base and if their unique push them into arr

arr.sort!
while limit < arr.length
arr.map! { |x|
  if(x != x.to_s)
    x = x.to_s
  end
  if x != "#{x}: " && "" == x.gsub(/\d/, '')
    array.push(x = x + ": ")
  end
  limit += 1
}
end
puts "#{arr}, #{array}, #{base}"

#dice_outcomes(3, 100)
#dice_outcomes(2, 1)
#dice_outcomes(9, 4)

def fibonacci(limit)
  first = 1
  second = 1
  sequence = []
  counter = 0
  while counter < limit
    sequence.push(first)
    increment = first + second
    first = second
    second = increment
    counter += 1
  end
  puts "The numbers in the Fibonacci Sequence up to #{limit.to_s} are #{sequence}"
end

#fibonacci(4)
#fibonacci(7)

def stock_picker(array)
  count = 0
  largest = 0
  step = 1
  result = 0
  while count < array.length - 1
    while step < array.length
      result = array[step] - array[count]
      if result > 0
        if result > largest
          largest = result
          low = count
          high = step
        end
      end
      step += 1
    end
    count += 1
    step = count + 1
  end
    if low == nil
      puts "There was never a good day to buy and sell the stock"
    else
      puts "The best day to buy the stock was day #{low.to_s} at #{array[low].to_s}, and the best day to sell was day #{high.to_s} at #{array[high].to_s}"
    end
end

#stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
#stock_picker([500, 700, 300, 400, 200, 100, 600])
#stock_picker([5, 4, 3, 2, 1])

def anagrams(string)
  # come back to this one
end
