def roll_dice(number_of_dice = 1)
  die = [1, 2, 3, 4, 5, 6]
  die_rolls = []
  
  number_of_dice.times { die_rolls << die.sample }

  roll_total = die_rolls.reduce(:+)
end 

def dice_outcomes(number_of_dice = 1, number_of_rolls = 1)
  die = [1, 2, 3, 4, 5, 6]
  roll_totals = []
  
  number_of_rolls.times do 
    die_rolls = []
    number_of_dice.times { die_rolls << die.sample }
    roll_totals << die_rolls.reduce(:+)
  end
  
  (number_of_dice..(number_of_dice * 6)).each do |num|
    puts "#{num}" + ': ' + "#" * roll_totals.count(num)
  end
end 

def fibonacci(num_in_sequence)
  fibnums = [1, 1]
  1.upto(num_in_sequence - 2) do |num|
    fibnums << fibnums[num] + fibnums[num - 1]
  end 
  fibnums.last
end

def stock_picker(prices)
  beg_index = 0
  low_index = 0 
  high_index = 0
  largest_difference = 0
  
  while beg_index < prices.length
    beg_index.upto(prices.length - 2) do |index|
      if prices[index] - prices[beg_index] > largest_difference
        largest_difference = prices[index] - prices[beg_index]
        low_index = beg_index
        high_index = index 
      end 
    end 
    beg_index += 1 
  end 
  
  [low_index, high_index]
    
end


#Kind of a weird solution, but it seems to work.
def anagrams(word)
  file = File.open("enable.txt", 'r')
  dictionary = file.readlines
  file.close

  same_length = []
  anagrams = []

  dictionary.each do |entry|
    if entry.length == word.length + 1
      same_length << entry
    end 
  end

  same_length.each do |entry|
   if word.chars.all? { |char| entry[0..(entry.length - 2)].count(char) == word.count(char) } && 
    entry[(0..entry.length - 2)] != word
     
     anagrams << entry[0..(entry.length - 2)]

   end 
  end 
  anagrams
end