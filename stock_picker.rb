#!/usr/bin/ruby

=begin 
Stock Picker - a method stock_picker takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable pair of days on which to first buy the stock and then sell the stock.


require 'pry'
=end

def stock_picker(arr_days)
    profit=0
    arr_profit_days=[]
    arr_days.each_with_index do |value_min, day_min|
        arr_days.each_with_index do |value_max, day_max|
            if day_min<day_max && value_max>value_min && profit<value_max-value_min
                profit=value_max-value_min
                binding.pry
                puts "DBG: value_max = #{value_max.inspect}"
                arr_profit_days.clear
                arr_profit_days <<day_min
                arr_profit_days <<day_max
            end
        end
    end
    arr_profit_days
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
#=> [2, 6]

=begin
puts ARGV
puts ARGV
puts ARGV



begin
  puts noth
rescue NameError
    puts "come on error"
ensure
    puts "we found an error, and are now sad."
end
=end
