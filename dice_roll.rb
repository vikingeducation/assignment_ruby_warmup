possible_outcome1 = [1,2,3,4,5,6]
print "How many dice would you like to roll? "
dice_to_be_rolled = gets.chomp.to_s
case dice_to_be_rolled
when "1"
    puts possible_outcome1[rand(possible_outcome1.length)]
when "2"
    puts possible_outcome1[rand(possible_outcome1.length)] + possible_outcome1[rand(possible_outcome1.length)]
when "3"
    puts possible_outcome1[rand(possible_outcome1.length)] + possible_outcome1[rand(possible_outcome1.length)] + possible_outcome1[rand(possible_outcome1.length)]
else
    puts "You can choose to roll 1, 2 or 3 dice. Good Luck!"
end
