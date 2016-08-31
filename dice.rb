def roll_dice(n=1)
  outcome = 0
  n.times do |counter|
    outcome += rand(1..6)
  end
  outcome
end

puts roll_dice(2)
