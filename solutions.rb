def roll_dice(ndice=1)
  total = 0
  ndice.times {total += (1..6).to_a.sample}
  total
end



def dice_outcomes(ndice, ntime)
  outcome = {}
  ntime.times {
    total = 0
    ndice.times {total += (1..6).to_a.sample}
    outcome[total] = outcome[total] ? outcome[total]+1 : 1 
  }
  outcome.sort.each do |num, times|
    puts "#{num}: #{times}"
  end
end



def fibonacci(num)
  if num <= 0
    puts "Please enter a positive number!" 
  else
    if num == 1
      return [1]
    elsif num == 2
      return [1, 1]
    else
      fnums = [1, 1]
      (2..num-1).each {|index| fnums << fnums[index-2] + fnums[index-1]}
      return fnums
    end
  end
end


def stock_picker(prices)
  cur_min = prices[0]
  cur_min_ind = 0
  max_profit = 0
  min_ind = 0
  max_ind = 0
  prices.each_with_index do |price, index|
    if price < cur_min
      cur_min = price
      cur_min_ind = index
    elsif price - cur_min > max_profit
      max_profit = price - cur_min
      min_ind = cur_min_ind
      max_ind = index
    end
  end
  [min_ind, max_ind]
end


def anagrams(orig_word)
  file_path = "./enable.txt"
  dict = File.open(file_path).read

  anagrams = []
  orig_word.downcase!
  pattern = orig_word.chars.sort.join
  
  dict.each_line do |line|
    word = line.strip.downcase
    anagrams << word if (word && (word != orig_word) && (word.chars.sort.join == pattern))
  end
  anagrams
end
