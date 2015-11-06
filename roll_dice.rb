def roll_dice(number=1)
   result = 0
   
   number.times {result +=rand(1..6)}

   result
end