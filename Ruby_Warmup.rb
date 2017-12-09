
#  Documents/Viking/Ruby/Ruby_Warmup

def roll_dice(n = 1)
  results = 0
    while n > 0
      results += 1 + rand(6)
      puts "roll count = #{n.to_s}, and results = #{results.to_s}"
      n -= 1
    end
end

#roll_dice(4)
#roll_dice(2)

def dice_outcomes(dice, rolls)
  # come back to this one
end

def fibonacci(limit)
  first = 1
  second = 1
  sequence = []
  counter = 0
  while counter < limit
    sequence.push(first)
    increment = first + second
    first = second
    second = increment
    counter += 1
  end
  puts "The numbers in the Fibonacci Sequence up to #{limit.to_s} are #{sequence}"
end

#fibonacci(4)
#fibonacci(7)
