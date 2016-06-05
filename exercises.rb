def roll_dice(n=1)
  Array.new(n) {rand(1..6)}.inject(:+)
end


def dice_outcomes(dice, repeat)
  
  result = {}

# populate hash with possible values

  keys=((1*dice)..(6*dice))
  keys.each {|key| result[key]=0 }

# update results hash with each roll of the dice
  
  repeat.times {|repeat| result[roll_dice(dice)]+=1 }

# display results

  result.each { |key, value| puts "#{key}: " + "#"*value }

end


def fibonacci(n)
  if !n.is_a? Integer
    p "that's not a number"
    
  end

  case n    
    when 0
      array=[]
    when 1
      array=[1]
    else
      array = [1, 1]
  end

    (n-2).times { |n| array << array[-1] + array[-2]}
    p array
end


def stock_picker(prices)
  max = 0
  result = [0, 0]
  prices.each_with_index do |pricea, indexa|
    prices.each_with_index do |priceb, indexb|
      if (indexb > indexa) && ((priceb - pricea) > max)
        max = priceb-pricea
        result = [indexa, indexb]
      end
    end
  end
  p result
end

def anagrams(str)
  result = []
  dict = File.open("enable.txt", "r").read
  permutations = str.chars.to_a.permutation.map {|letter| letter.join('') + "\n"}
  permutations.each { |word| result << word.chomp if dict.include?(word) }
  result.delete(str)
  result
end





