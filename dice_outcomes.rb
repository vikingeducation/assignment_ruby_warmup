puts "How many dice you wanna roll? (Use an integer > 0)"
number_of_dice = gets.chomp.to_i

puts "How many times we rollin' 'em boss? (Use an integer > 0)"
times_rolled = gets.chomp.to_i

def dice_outcomes(number_of_dice, times_rolled)
  dice_hash = {}
  lowest_possible_number = number_of_dice
  highest_possible_number = number_of_dice * 6
  lowest_possible_number.upto(highest_possible_number) { |num|
    dice_hash[num] = 0
  }
  times_rolled.times {
    dice_result = 0
    number_of_dice.times {
      dice_result += rand(6) + 1
    }
    dice_hash[dice_result] += 1
  }
  dice_hash.each { |result, hits|
    visual_rep = "\#" * hits
    if result < 10
      spacer = "  "
    elsif result > 9 && result < 100
      spacer = " "
    elsif result > 99
      spacer = ""
    end
    puts "#{result}:#{spacer}#{visual_rep}"
  }
end

dice_outcomes(number_of_dice, times_rolled)