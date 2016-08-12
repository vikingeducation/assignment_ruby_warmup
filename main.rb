def role_dice(num_dice = 1)
  total = 0
  num_dice.times do
    total += rand(6) + 1
  end
  return total
end

def dice_outcomes(num_dice, num_rolls)
  results = {}
  num_rolls.times do
    result = role_dice(num_dice)
    results[result] ||= 1
    results[result] &&= results[result] + 1
  end
  results = results.sort_by{|key, value| key}
  results.each { |key, value| puts "#{key}: ".ljust("#{key}: ".to_s.length + value, "#") }
end

def fibonacci(num)
  num >= 1 ? fibs = [1] : fibs = []
  store1 = 0
  store2 = 1
  (num - 1).times do |i|
    fibs << store1 + store2
    store1 = store2
    store2 = fibs.last
  end
  fibs
end

def stock_picker(stock_days = [])
  days = [0, 1]
  0.upto(stock_days.length - 2) do |day1|
    (day1 + 1).upto(stock_days.length - 1) do |day2|
      days = [day1, day2] if stock_days[day2] - stock_days[day1] > stock_days[days[1]] - stock_days[days[0]]
    end
  end
  days
end

def anagrams(word)
  words = []
  lines = IO.readlines("./enable.txt")
  lines.each { |line| words << line.chomp if word.split("").sort == line.chomp.split("").sort }
  words
end
