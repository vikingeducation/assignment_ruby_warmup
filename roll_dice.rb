#require 'FileUtils'

def roll_dice (num=1) 
  total_roll = 0
  num.times do 
    total_roll += (1..6).to_a.sample
  end
  return total_roll
end

def dice_outcomes(dice=1,rollno=1) 
  visual_chart_hash = Hash.new("")
  rollno.times do 
    result = roll_dice(dice)
    visual_chart_hash[result.to_s.to_sym] += "#"
  end
  final_return = Hash[visual_chart_hash].sort
  return final_return
end

def fibonacci(num)
  such_array = [1,1]
  last_num = 0
  if num == 1
    return 1
  end
  while such_array.length < num
    last_num = such_array[-1] + such_array[-2]
    such_array << last_num
  end
  return such_array
end

def stock_picker(day_array)

  largest_num = 0
  topnum = 1
	bottomnum = 0

	day_array[0..-2].each_with_index do |buy, i|
		day_array[(i+1)..-1].each_with_index do |sell, j| 
      if (sell - buy) > largest_num
				topnum = j + (i+1)
				bottomnum = i
        largest_num = sell - buy
			end
		end	
	end
  return [bottomnum,topnum]	
end

def anagrams(word_input)  
  scrabble_dictionary=[]
 File.open('scrabble.txt').each do |line|
    scrabble_dictionary << line
  end
  return_answers = [""]
  scrabble_dictionary.each do |word|
    if word.downcase.chars.sort.join.strip.chomp == word_input.downcase.chars.sort.join.strip.chomp
      return_answers << word[0..-3]
   end
  end
  return return_answers
end




