def roll_dice(dice_number = 1)
  roll = rand(1..6)
  dice = dice_number - 1
  dice > 0 ? roll + roll_dice(dice) : roll
end

def dice_outcomes(dice_number, iteration)
  hash_chart = Hash.new
  iteration.times do
    value = roll_dice(dice_number)
    hash_chart.has_key?(value) ? hash_chart[value] += 1 : hash_chart[value] = 1
  end
  hash_chart = hash_chart.sort_by {|k, v| k }
  hash_chart.each {|key, value| puts "#{key}:  "  +  "#"*value}
  hash_chart.to_h
end

def fibonacci(order)
  fibo = [1,1]
  while fibo.length < order
    fibo << fibo[-1]  + ( fibo[-2] == nil ? 1 : fibo[-2])
  end
  fibo
end

def stock_picker(ary)
  picker = []
  max  = 0
  (ary.length-1).times do |i|
    (i+1..ary.length-1).each do |j|
      if ary[j] - ary[i] > max
        picker = [i, j]
        max = ary[j] - ary[i]
      end
    end
  end
  picker
end

def anagrams(word_search)
  word_match = Array.new()
  fo = File.open("./enable.txt", "r")
  words = fo.readlines
  fo.close
  word_search.downcase!
  words.each do |word|
    word.chomp!
    if (word != word_search) && (word.length == word_search.length)
      word_match << word.upcase if word_search.split("").sort == word.split("").sort
    end
  end
  word_match
end
