def roll_dice(n)
  total = 0
  n.times do
    total += (1 + rand(6))
  end
  total
end


def dice_outcomes(n, b)
  outcomes = []
  b.times do
    outcomes << roll_dice(n)
  end
  frequency = Hash.new(0)
  outcomes.each { |outcome| frequency[outcome] += 1 }
  frequency.sort.each do |k, v|
    puts "#{k}: #{("#"*v).ljust(12)}"
  end
  puts frequency
end

dice_outcomes(3, 100)
