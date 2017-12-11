
#  Documents/Viking/Ruby/Ruby_Warmup

def roll_dice(n = 1)
  results = 0
  while 0 < n
    results += 1 + rand(6)
    puts "The count of this dice roll is #{n.to_s} and the cumulative total result is #{results.to_s}"
    n -= 1
  end
end

roll_dice(4)
roll_dice(2)

def dice_outcomes(dice, rolls)
  tracker = 0
  copies = []
  while rolls > tracker
    growth = 0
    outcome = 0
    while dice > growth
      outcome += 1 + rand(6)
        growth += 1
    end
    copies << outcome
    tracker += 1
  end
  unique = []
  chart = []
  limit = 0
    copies.each do |original|
      if !unique.include?(original)
        unique << original
      end
    end
    unique.sort!
      unique.each do |del|
        copies.delete_at(copies.index(del))
      end
        unique.map { |formaty|
          chart << (formaty.to_s + ": #")
        }
          copies.each do |hashify|
            hashy = chart[unique.index(hashify)]
            hashy.replace(hashy + "#")
          end
          puts "#{dice.to_s} dice were rolled #{rolls} times to produce the following results"
          puts chart
end

dice_outcomes(3, 100)
dice_outcomes(2, 10)
dice_outcomes(9, 7)

def fibonacci(limit)
  first = 1
  second = 1
  sequence = []
  counter = 0
  while counter < limit
    sequence << first
      increment = first + second
        first = second
          second = increment
            counter += 1
  end
  puts "The numbers in the Fibonacci Sequence up to #{limit.to_s} are #{sequence}"
end

fibonacci(4)
fibonacci(7)

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

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
stock_picker([500, 700, 300, 400, 200, 100, 600])
stock_picker([5, 4, 3, 2, 1])

def anagrams(string)
  dictionary = File.readlines("enable.txt")
    stringy = string.strip.downcase
      testy = stringy.chars.sort.join
      anagrams = []
      dictionary.each do |word|
        wordy = word.strip.downcase
          check = wordy.chars.sort.join
          if (testy == check)
            anagrams << wordy
          end
      end
        anagrams.delete_at(anagrams.index(stringy))
        if anagrams == []
          puts "No anagrams were found for #{string}"
        else
          puts "The following anagrams were found for #{string}"
          puts "#{anagrams}"
        end
end

anagrams("Pears")
anagrams("zygote ")
anagrams("alErTs")
