def roll_dice(number=1)
  total_dice_roll = 0
  (1..number).each do |num|
    total_dice_roll += rand(1..6)
  end
  total_dice_roll
end
# roll_dice(4)
# ***********************************************************************
def dice_outcomes(num_dice_to_roll, num_of_rolls)
  outcomes = []
  outcomes2 = []
  (1..num_of_rolls).each do |roll|
    outcomes << (roll_dice(num_dice_to_roll)).to_s
  end 
  puts "#{outcomes}"

  counts = Hash.new(0)
  outcomes.each { |outcome| counts[outcome] += 1 }
  puts "#{counts}"

  print_outcomes(counts)
end

def print_outcomes(counts)
  counts.each do |outcome, total_count|
    puts "#{outcome}: #{'#'*total_count}"
  end
end

#dice_outcomes(3,50)
# ***********************************************************************

def fibonacci(num_of_outputs)
    previous_number = 0
    current_number = 1

    num_of_outputs.times do |output|
        fibonacci_value = previous_number + current_number
        puts current_number
        previous_number = current_number
        current_number = fibonacci_value

    end
end
# fibonacci(7)
# ***********************************************************************

def stock_picker(stock_price_array)
  highest_total = 0
  best_stock_combo = []
  stock_price_array.each_with_index do |sp, i|
    stock_price_array[(i+1)..(stock_price_array.size)].each_with_index do |sp_inner, ii|
      if (sp_inner > sp)
        # puts "#{sp} #{sp_inner} #{total} [#{i} #{ii + (i+1)}]"
        if (((sp - sp_inner).abs) > highest_total)
          highest_total = (sp - sp_inner).abs
          best_stock_combo.replace([i, ii + (i+1)])
        end
      end
    end
  end
  print best_stock_combo
end
stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
# ***********************************************************************

def anagrams(word)
  anagrams = []

  IO.foreach("enable.txt") do |line|
    orig_word = word.chars
    word_to_compare = line.chars.first(line.size - 1)

    if ((orig_word.all? { |c| word_to_compare.include?(c) }) && (orig_word.length == word_to_compare.length))
      if (orig_word != word_to_compare)
        anagrams << word_to_compare.join("")
      end
    end  
  end
  print "#{anagrams}"
end
# anagrams("pears")