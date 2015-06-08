
# Rolling Dice

def roll_dice(number_of_dice = 1)
  return_value = 0
  (1..number_of_dice).each do
    dice_value = rand(1..6)
    # puts dice_value
    return_value += dice_value.to_i
    # puts return_value
  end
  return return_value
end

# roll_dice(4)

def dice_outcomes(number_of_dice, number_of_roles)
  possible_numbers = {}
  final_dice_value = 0

  (1..number_of_roles).each do |i|
    
    (1..number_of_dice).each do 
      dice_value = rand(1..6)
      final_dice_value += dice_value
    end

    if(possible_numbers.include?(final_dice_value))
      possible_numbers[final_dice_value] += "#"
    
    else
    possible_numbers[final_dice_value] = "#"
    end
    
    final_dice_value = 0
  end

  possible_numbers.sort.each do |key, value|
    puts "#{key}: #{value}"
  end
end

# dice_outcomes(2, 100)

def fibonacci(number_of_digits)
  fib_array =[1, 1]

  (3..number_of_digits).each do |i|
    next_fib = fib_array[i-2]+fib_array[i-3]
    fib_array.push(next_fib)
  end

  if(number_of_digits == 1)
    puts "[#{fib_array[0]}]"
  else
  puts "#{fib_array}"
  end
end

# fibonacci(7)

# def stock_picker(stock_array)
#   end
# end

def anagrams(string)

  return_array=[]
  string_array=[]


  string.each_char {|c| string_array.push(c)}

  file = File.open("enable.txt", 'r')
  while !file.eof?
    line = file.readline
    line = line.strip
    if string.chars.sort == line.chars.sort
      return_array.push(line)
    end

  end
  puts return_array
end



# anagrams("pears")