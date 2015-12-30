
def roll_dice(n=1)
    total = 0
    n.times do
      total += (6*rand()).floor() + 1
    end
    total
end

def dice_outcomes( n, repetitions )
    dice_hash = Hash.new(0)
    repetitions.times do
        dice_hash[roll_dice( n )] += 1
    end

    new_hash = Hash[ dice_hash.sort ]
    new_hash.each do | key, value |
        puts "#{key}: " + '#' * value
    end
end

dice_outcomes(3, 50)

def fibnoacci( limit )
    fibo = [1, 1]
    while fibo.length < limit
        fibo << fibo[-1] + fibo[-2]
    end
    puts fibo
end

fibnoacci(7)

def stock_picker(arr)
    max_return = -9999999
    for i in 0...arr.length
        for j in (i+1)...arr.length
            if arr[j] - arr[i] > max_return
                max_return = arr[j] - arr[i]
                save_i = i
                save_j = j
            end
        end
    end
    [save_i, save_j]
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])

def anagrams( input_word )
    words = []
    File.open("enable.txt").readlines.each do |line|
        temp_string = line.strip
        temp_hash = Hash.new(0)
        temp_string.each_char do |c|
            temp_hash[c] += 1
        end
        words  << [temp_hash, temp_string]
    end

    input_hash = Hash.new(0)
    input_word.each_char do |c|
        input_hash[c] += 1
    end

    solution_arr = []
    for word in words do
        solution_arr << word[1] if input_hash == word[0] && input_word != word[1]
    end
    puts solution_arr
end

puts anagrams("pears")



