#!/usr/bin/ruby

def fibonacci(number_of_items = 0)
  fibonacci = [1, 1]
  case number_of_items
    when 0
      puts "You didn't specify a number!"
    when 1
      puts "[1]"
    when 2
      puts "#{fibonacci}"
    else
      (number_of_items - 2).times do |num|
        fibonacci << (fibonacci[num] + fibonacci[num.next])
      end
      puts "#{fibonacci}"
  end
end

fibonacci(7)
