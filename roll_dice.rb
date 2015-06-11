#Write a method roll_dice which returns the result of rolling N 6-sided dice where N is the input to the method (the default should be 1)
#> roll_dice(4)
#=> 18          # Rolled 4 dice
#> roll_dice(2)
#=> 4           # Rolled 2 dice
#> roll_dice
#=> 1           # Rolled 1 die

def roll_dice(n=1)
  die=(1..6).to_a
  result=0

  n.times do
    result += die.sample
  end

  puts result
end

roll_dice(4)
roll_dice