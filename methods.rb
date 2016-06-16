#methods
class Test
  def initialize
    puts "\n * * * * * Init Test Class, testing functions * * * * * "
  end

  def roll_dice(a_number)
    i = a_number
    sum = 0
    while i > 0 do
      sum += 1 + rand(6)
      i -= 1
    end
    return sum
  end

  def dice_outcomes(number_dices, iter)
    #makes an dictionary of results from number_dices*1-6
    result = Hash.new()
    (number_dices..number_dices*6).each do |num|
      result["#{num}"] = 0
    end
    #simulates [iter] times and increments value of keys
    iter.times do
      sim = roll_dice(number_dices)
      result["#{sim}"] += 1
    end
    #Creating visual chart
    result.each do |key, value|
      #just a small touchup to align the spacing
      print key.to_i < 10 ? "#{key}:  " : "#{key}: "
      #printing out hashtag symbol [value] amount of times
      value.times do print "#"
      end
      print "\n"
    end
  end

  def fibonacci(a_number)
    fib_list = Array.new(a_number)
    i = 1
    while i <= a_number 
      fib_list[i-1] = fib(i)
      i += 1
    end
    return fib_list
  end

  def fib(a_number)
    a_number <= 1 ? a_number : fib(a_number - 1) + fib(a_number - 2)
  end

  def stock_picker(array_numbers)
    #did this one during interview
    profit = 0
    findex = Array.new(2)
    array_numbers.each_with_index do |val1, index1|
      array_numbers[index1..-1].each_with_index do |val2, index2|
        if val2 - val1 > profit
          profit = val2 - val1
          findex[0] = index1
          findex[1] = index2
        end
      end
    end
    return findex
  end

  def anagrams(a_string)
    #dictionary wordlist
    word_list = File.open("enable.txt").read.split(/\b/)
    matching = Array.new()
    #word sorter, alphabet,lowercase as String
    word_char = a_string.chars.to_a.sort.join.downcase
    word_list.each do |word|
      #doing the same process
      if word_char == word.chars.to_a.sort.join.downcase
        matching.push(word)
      end
    end
    return matching
  end
end

# testing outputs of functions
# theTester = Test.new
# print " * * * * * testing stuff * * * * * \n"

# test1 = theTester.roll_dice(3)
# test2 = theTester.dice_outcomes(3,100)
# test3 = theTester.fibonacci(7)
#test4 = theTester.stock_picker([44,30,24,32,35,30,40,38,15])
# test5 = theTester.anagrams("pears")

# print test1 ,"\n", test2, "\n", test3, "\n", test4, "\n", test5, "\n"