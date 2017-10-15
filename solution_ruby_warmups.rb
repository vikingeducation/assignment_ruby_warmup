solution_ruby_warmups

Overview

This assignment should've gotten your brain thinking in Ruby. Each one of these problems, like most algorithms, has a trick to it. The key to solving problems is to find that trick and exploit it. Usually finding that trick cuts down on lines of code as well!

Reviewing Your Solution

While reviewing your code you should ask yourself the following questions:

Dice

Do the outcomes for your different numbered dice amounts make sense? For example, if you're rolling 3 dice and you get an abundance of 3s in your results that means all dice are coming up 1 a lot and you should probably check your work.
How did you ensure the randomness of your dice roll while keeping it realistic to the confinements of a die?
Fibonacci

Did you solve the problem recursively?
Can you explain why the function, when called, does not result in an infinite loop or stack over flow?
Stocks

Does the returned value for buy and sell day make sense?
Can you visually see that you're getting the correct answer?
How many iterations does it take you to ensure you're getting an accurate answer?
Is there any way you can cut down on the number of iterations it takes to reach that answer?
Anagram

Ruby and programming aside, how do you algorithmically tell if one word is an anagram of another?
How do you implement this algorithm in your code?
Introducing Our Solution

You can open up the source for the solution in warmups.rb. If you want to quick run some examples to see the code in action run $ ruby example.rb from the project directory.

Key Tips and Takeaways

When storing key value pairs use a hash. When you wanted to represent the results for your dice roll outcomes you should've used a hash instead of an array. This is because an array will automatically start at 0. However, we're treating the resulting numbers as keys. That means we don't want a key of 0 to exist. In fact we don't really want a key to exist unless a roll resulted in that number. This is perfect for hashes.

def dice_outcomes(dice = 1, rolls=100)
  outcomes = {} # <<<< Use a hash

  # fill up the outcomes hash with possible 
  (dice..dice*6).each do |i|
    outcomes[i] = 0 # <<<< Initialize keys to 0
  end

  # Start rolling and recording outcomes
  rolls.times do |i|
    outcomes[roll_dice(dice)] += 1 <<<< Increment
  end

  # Output the hash values
  outcomes.keys.each do |num|
    print "#{num}: ".ljust(4)
    outcomes[num].times { print "#" }
    print "\n"
  end
  outcomes
end
When you say fibonacci, I say recursive. Fibonacci! Finding fibonacci numbers is a classic recursively solved problem. This is because we're able to take the number we're given and perform the same operation on it over and over until we reach a condition. When the condition is reached we return. This returning happens until we reach the original calling function and then we return all of the results. In the code below we use the helper function recursive_fibonacci to handle that recursion. We then wrap the recursive function with a loop in the fibonacci function and push each return value onto our array.

def recursive_fibonacci(n)
  if n == 0 || n == 1
    n
  else
    recursive_fibonacci(n - 1) + recursive_fibonacci(n - 2)
  end
end


def fibonacci(n)
  fibs = []
  n.times do |i|
    fibs << recursive_fibonacci(i)
  end
  fibs
end
Finding the max value of a set of values requires at least one full traversal of those values. In order to find the maximum value of any set of numbers you must compare the current max value you know to all of the remaining values. If you stop before the end, you're not sure if there was still a greater value. The easiest way to do this is to ensure that the current value is greater that your current max. If it is, store it, if not continue to the next.

def stock_picker(prices)

  buy_day, sell_day = nil, nil

  max_return = 0

    prices.each_with_index do |price_a, day_a|
      prices.each_with_index do |price_b, day_b|

        current_return = price_b - price_a

        # If max is greater than current max
        if day_b > day_a && current_return > max_return
          max_return = current_return # <<<< Store max
          buy_day, sell_day = day_a, day_b
        end

      end
    end

  [buy_day, sell_day]
end
A word is an anagram of another when the alphabetically sorted versions of them are equal. The sorted version of the word "LISTEN" is the same as the sorted version of the word "SILENT". You can't sort the characters of a string directly, but you can sort an array of characters. The trick is to access the .chars of the string. This is the internal array of characters in a string.

def anagram(str)
  # load dictionary
  dict = File.readlines("enable.txt").map{ |l| l.strip.upcase }

  # check for anagrams
  anagrams = []
  str.upcase!
  dict.each do |word|
    next unless word.length == str.length
    next if word == str

    # Sort the chars array
    # of both strins and join them
    #
    # If they are the same it is
    # an anagram
    anagrams << word if word.chars.sort.join == str.chars.sort.join
  end

  anagrams
end
