roll_dice = 1 + rand(6)

def roll_dice(dice_num) #returns the sum of the outcomes of rolling each dice once in "dice_num" number of dices
  sum = 0
  dice_num.times do
    outcome = 1 + rand(6)
    sum += outcome
  end
  return sum
end


def dice_outcomes(dice_num, roll_times)

  hash = {}

  n = 1
  while n <= roll_times do
    sum = roll_dice(dice_num)
    if hash[sum] == nil
      hash[sum] = 1
    else
      hash[sum] += 1
    end
    n += 1
  end

  hash.each do |key,value|
    p "#{key}: #{value}"
  end
end

#dice_outcomes(3, 100)

def fibonacci(num)
  if num <= 1
    return "error you need a number greater or equal to 1 for this to work!"
  end

  if num == 1
    return [1]
  end

  array = [1,1]
  i = 3
  while i <= num do
    array << array.last(2).reduce(:+)
    i += 1
  end
  return array
end

#p fibonacci(4)

def stock_picker(array)
  best = [0,0]
  profit = 0
  array.each_index do |i|
    (i+1).upto(array.count - 1) do |i2|
      if array[i2] - array[i] > profit
        profit = array[i2] - array[i]
        best = [i, i2]
      end
    end
  end
  return best
end

p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
