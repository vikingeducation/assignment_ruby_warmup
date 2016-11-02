
def anagrams(str)
  if str.empty?
    return nil
  end

  # [a, b, c]

  #  1st: a
  #  add b: ba | ab
  #  add c: cba, bca, bac | cab, acb, abc

  res = [str[0]]
  str.chars.slice(1..-1).each { |letter|
    new_res = []

    res.each { |temp_str| 

      (0..temp_str.length).each { |insert_index|
        new_res.push(insert_help(temp_str, insert_index, letter))

      }
    }

    res = new_res
  }

  res.uniq!.delete(str)
  return res

end


def insert_help(str, i, letter)
  str = str.to_s
  return str[0..i] + letter + str[(i + 1)..str.length].to_s
end


def stock_picker(prices)
  if prices.length < 2
    return nil
  end

  lowest_price = prices[0]
  lowest_price_index = 0

  max_profit = 0

  best_pair = []

  prices.each_with_index do |price, index|
    if max_profit < (price - lowest_price)
      max_profit = price - lowest_price
      if lowest_price_index != index
        best_pair = [lowest_price_index, index]
      end
    end

    if price < lowest_price
      lowest_price = price
      lowest_price_index = index
    end

  end

  return best_pair

end


def roll_dice(n=1)
  res = 0
  
  n.times {
    res += (1 + rand(6))
  }

  return res

end


def dice_outcomes(num_dice, roll_times)
  outcome = {}
  
  roll_times.times {
    res = 0
    num_dice.times {
      res += (1 + rand(6))
    }

    outcome[res.to_s] = outcome[res.to_s].to_s + "#"
  }

  outcome.each do |num, time| 
    puts num.ljust(2, ' ') + ": #{time}"  
  end

  return nil

end


def fibonacci(n)
  if n < 0
    return [0]
  end

  if n == 1
    return [1]
  elsif n == 2
    return [1, 1]
  end

  res = [1, 1]

  (2..(n-1)).each do |i|
    res[i] = res[i - 1] + res[i - 2]
  end

  return res
end

# f = ARGV[0]
# s = ARGV[1]

# puts anagrams("PEARS")