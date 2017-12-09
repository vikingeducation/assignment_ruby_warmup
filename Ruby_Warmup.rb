
#  Documents/Viking/Ruby/Ruby_Warmup

def roll_dice(n = 1)
  results = 0
    while n > 0
      results += 1 + rand(6)
      puts "roll count = #{n.to_s}, and results = #{results.to_s}"
      n -= 1
    end
end

roll_dice(4)
roll_dice(2)
