#write a method that returns the result of rolling N 6-sided dice where N is the input to the method


def roll_dice(roll_number)
  roll_results = Array.new

  roll_number.times do
      
      rand_num = rand(1..6)
      roll_results.push(rand_num)
      #"rolls the number of times as the input"
      #saves the results in an array (collect) 
      end 
  
  total= roll_results.reduce (0){|sum, i| sum + i}
  #sums all of the array elements
  return total
  #prints it to the user

end

roll_dice

#Have questions on the collect method
#roll_results.collect{|roll| roll.rand (1..6)}
#instead doing it out explicitly