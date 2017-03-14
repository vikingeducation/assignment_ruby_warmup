def rolldice(num)
	puts rand(1..6) * num.to_i
end

puts "input number of dice to throw"
userinput = gets.chomp

rolldice(userinput)