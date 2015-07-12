def roll_dice(num)
  sum = 0;
  num.times do
    sum += 1+Random.rand(6)
  end
  sum
end

def dice_freq(dice_nums, roll_times)
  freq = Hash.new(0)
        roll_times.times do
               points = roll_dice(dice_nums)
               freq[points]+=1
  end
  
  freq = freq.sort.to_h
  
  freq.map{|key, item| 
    print"#{key} :"
            item.times do
                   print"#"
               end
               puts""
    }
end

dice_freq(2,400)
