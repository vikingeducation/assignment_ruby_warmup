# Returns the result of rolling N 6-sided dice where N is the input to the method (the default should be 1).
def roll_dice(num=1)
  total = 1
  num.times do
    total += rand(6) + 1
  end
  return puts "#{total}"
end

roll_dice(2)