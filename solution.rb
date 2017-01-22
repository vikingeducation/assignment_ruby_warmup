# ----------------------------------------------------------------------
# Ruby Warmup Sprint
# ----------------------------------------------------------------------

# ------------------------------------------------------------------
# DICE
# ------------------------------------------------------------------

def rolling_dice n
  "returns the result of rolling n 6-sided dice"
  r = 0
  n.times {r += rand(1..6)}
  r
end

# rolling_dice 3

def dice_outcomes dices, rolls
  r = {}
  rolls.times do
    partial_result = rolling_dice dices
    times = r[partial_result]
    r[partial_result] = times ? times+1 : 1
  end
  r.sort.each do |k, v|
    puts "#{k}:\t" + ("#" * v)
  end.to_h
end

# dice_outcomes 3, 100

# ------------------------------------------------------------------
# FIBONACCI
# ------------------------------------------------------------------

def fib n
  "outputs the fibonacci sequence members out to the specified n of members"
  acc, x, y = [], 0, 1
  n.times do
    acc << y
    x, y = y, (x+y)
  end
  acc
end

# fib 7

# ------------------------------------------------------------------
# STOCK PICKER
# ------------------------------------------------------------------

def profits_per_day prices
  result = Hash.new {|h, k| h[k] = []}
  num_of_days = prices.length
  num_of_days.times do |current_day|
    (current_day + 1).upto(num_of_days - 1) do |i|
      result[current_day] << {
        day: i, profit: (prices[i] - prices[current_day])
      }
    end
  end
  result
end

def highest_sell_per_day  x
  acc = {}
  x.each do |buy_day, sell_day_and_profits|
    acc[buy_day] = sell_day_and_profits.reduce do |x, y|
      x[:profit] > y[:profit] ? x : y
    end
  end
  acc
end

def stock_picker prices
  # for each day, see what the profit would have been by selling it on the others
  # sort through the days seeing what the highest day woud've been
  result = nil
  acc = profits_per_day prices
  highest_sell_per_day(acc).each do |k, v|
    if result
      if v[:profit] > result[:profit]
        result = {buy: k, sell: v[:day], profit: v[:profit]}
      end
    else
      result = {buy: k, sell: v[:day], profit: v[:profit]}
    end
  end
  result
end

# stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])

# ------------------------------------------------------------------
# ANAGRAM
# ------------------------------------------------------------------

require "set"
$WORDS = Set.new ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]

def anagrams(word)
  if word.length <= 1
    return [word]
  else
    acc = Set.new
    anagrams(word[1..-1]).each do |perm|
      word.length.times do |i|
        f = perm.slice 0, i
        s = word.slice 0, 1
        t = perm.slice i, perm.length
        w = f+s+t
        acc.add w.upcase
      end
    end
    return acc
  end
end

# anagrams("pears").intersection $WORDS
# anagrams("zygote").intersection $WORDS
