def roll_dice(number=1)
  result = 0
  randint = Random.new
  number.times do
    result += randint.rand(1..6)
  end
  result
end