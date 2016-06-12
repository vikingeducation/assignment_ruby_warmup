def roll_dice(n = 1)
  prng = Random.new
  roll_outcomes = Array.new(n) { prng.rand(1..6) }
  roll_outcomes.reduce(0, :+)
end

