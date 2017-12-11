
=begin
Write a method roll_dice which returns the result of rolling N 6-sided dice
where N is the input to the method (the default should be 1).
=end

def roll_dice(n = 1)
  results = 0
  amount = n
  while 0 < amount
    results += 1 + rand(6)
    amount -= 1
  end
    if n == 1
      puts "A die was rolled and is showing #{results.to_s}"
    else
      puts "#{n.to_s} dice were rolled and are showing a total of #{results.to_s}"
    end
end

roll_dice(4)
roll_dice(2)
roll_dice

=begin
Now write a method dice_outcomes which takes the number of dice to roll and
the number of times to roll them, then outputs a visual chart of how many
times each possible number comes up.

Example ~

dice_outcomes(3, 128)

3:  ##
4:  #
5:  #
6:  ####
7:  ###
8:  #################
9:  ###########
10: #########
11: ############
12: ##########
13: ##########
14: #########
15: ######
16: ##
17: ##
18: #

=end

def dice_outcomes(dice = 1, rolls = 1)
# I used an array method instead of a hash method as I found it easier to match the example output chart
  tracker = 0
  copies = []
# first create an arry of all outcomes called copies
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
# now create an array of the unique values in the copies array called unique
    copies.each do |original|
      if !unique.include?(original)
        unique << original
      end
    end
    unique.sort!
# delete the unique values from the copies array so only the duplicate values remain
      unique.each do |del|
        copies.delete_at(copies.index(del))
      end
# format the values of the copies and unique arrays for display in the chart array
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
dice_outcomes
dice_outcomes(9, 7)

=begin
Write a method fibonacci which outputs the Fibonacci Sequence members out to
the specified number of members.
=end

def fibonacci(limit)
  sequence = []
  if limit == 0 || limit == 1
    sequence << limit
  else
    first = 1
    second = 1
    counter = 0
    while counter < limit
      sequence << first
        increment = first + second
          first = second
            second = increment
              counter += 1
    end
  end
  puts "The numbers in the Fibonacci Sequence up to #{limit.to_s} are #{sequence}"
end

fibonacci(4)
fibonacci(7)
fibonacci(1)

=begin
Write a method stock_picker which takes an array of stock prices (prices on
days 0, 1, ...) and outputs the most profitable pair of days on which to
first buy the stock and then sell the stock.
=end

def stock_picker(array)
  result = 0
  largest = 0
# count is the value of the array to check against the arrays proceeding values, which are represented by step
  count = 0
  step = 1
  while count < array.length - 1
    while step < array.length
      result = array[step] - array[count]
      if result > largest && result > 0
        largest = result
          low = count
            high = step
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

=begin
Write a method anagrams which returns an array of anagrams that can be made
with the specified string. Assume the input is only a single word
(e.g. "loot" not "William Shakespeare").
=end

def anagrams(string)
# enable.txt is a Scrabble dictionary provided/recommended by Viking Code School
  dictionary = File.readlines("enable.txt")
  stringy = string.strip.downcase
# by SORTing the letters of the source string and the dictionary words you can easily match the results to find anagrams
  testy = stringy.chars.sort.join
  anagrams = []
    dictionary.each do |word|
      word = word.strip
      if word.length == stringy.length
        check = word.chars.sort.join
        if testy == check
          anagrams << word
        end
      end
    end
      if anagrams == []
        puts "No anagrams were found for #{stringy.upcase}"
      else
        anagrams.delete_at(anagrams.index(stringy))
        puts "The following anagrams were found for #{stringy.upcase}"
        puts "#{anagrams}"
      end
end

anagrams("Pears")
anagrams("zygote ")
anagrams("alErTs")
