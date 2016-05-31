def roll_dice(num_dice=1)
  sum=0
    num_dice.times do 
      sum+=rand(1..6)
    end
  sum
end

def dice_outcomes(num_dice=1, rolled_times)
  outcomes={}
  (num_dice..num_dice*6).each do |outcome|
    outcomes[outcome]=""
  end
  rolled_times.times do
    sum=0
    num_dice.times do
      sum+=rand(1..6)
    end
    outcomes[sum]+="#"
  end
  outcomes.each do |outcome, times|
    if outcome<10
      puts "#{outcome}:  #{times}"
    else
      puts"#{outcome}: #{times}"
    end
  end
end

def fibonacci(number_of_numbers)
  result=[]
  if number_of_numbers >=1
    result << 1
  end
  if number_of_numbers>=2
    result << 1
  end
  if number_of_numbers>=3
    (3..number_of_numbers).each do |number|
      result << result[number-3]+result[number-2]
    end
  end
  result
end

def stock_picker(stock_prices)
  most_profitable_days=[]
  most_profit=0
  (0..stock_prices.length-2).each do |start_day|
    (start_day+1..stock_prices.length-1).each do |end_day|
      if stock_prices[end_day]-stock_prices[start_day]>most_profit
        most_profit=stock_prices[end_day]-stock_prices[start_day]
        most_profitable_days[0]=start_day
        most_profitable_days[1]=end_day
      end
    end
  end
  most_profitable_days
end

def anagrams(entry_word)
  result=[]
  letters=entry_word.split("").sort
  dictionary=File.readlines("enable.txt").map{|word| word.chomp}
  dictionary.each do |word|
    if word.split("").sort==letters
      result << word
    end
  end
  result
end





