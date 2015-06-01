def roll_dice(die = 1)
    rolls = []
    die.times { rolls << rand(6) + 1}
    total = rolls.inject{|sum, x| sum + x}
    return total    
end


def dice_outcomes(die,count)
  totals = []
  answer = Hash.new 0
    for z in die..(die*6)
        answer[z] = 0
    end
    count.times do 
      arr = []
      die.times do
        arr << rand(6) + 1
      end
        total = arr.inject{|sum, x| sum + x}
      totals << total
    end
    
    
    totals.each do |add|
         answer[add] += 1
    end
    
    answer.each do |a,b|
        puts "#{a}: " + ("#" * b)
    end
end

def fibonacci(x)
    arr = [0,1]
    for i in 1...x do
        arr << arr[i] + arr[i-1]
    end
    arr
end

def stock_picker(prices)
    profit = 0
    for i in 0...prices.length 
        for e in i+1...prices.length
            temp = prices[e] - prices[i]
            if temp > profit
                profit = temp
                first_day = i
                second_day = e
            end
        end
    end
    return [first_day,second_day]
end


def anagrams(word)
  file = File.open("enable.txt", "r")
  
  word = word.chars
  ans = []
  
     while !file.eof?
        line = file.readline
    
        if word.length == line.length - 1
          
          counter = 0
          for i in 0...word.length 
            if line.include?("#{word[i]}")
    
              counter += 1
            end
          end
          if counter == word.length
        
            ans << line
          end
        end
     end
  if ans == []
    puts "the array is empty"
  else
  puts ans
  end
end   