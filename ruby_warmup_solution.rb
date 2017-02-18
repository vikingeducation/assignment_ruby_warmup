# =========== ROLL DICE ============================

def roll_dice(dice = 1)

    result = 0
    dice.times do
        result += rand(1..6)
    end
    puts "The result of rolling #{dice} #{dice == 1? "die" : "dice"} is #{result}"
end

# roll_dice 3


# =========== ROLL DICE OUTCOMES ===================

def dice_outcomes(dice=1, rolls=1)
    results = Hash.new(0)
    rolls.times do
        sum = 0
        dice.times do
            sum += rand(1..6)
        end
        results[sum] += 1
    end
    ((1*dice)..(6*dice)).each do |index|
        puts "#{index} : ".rjust(5) + "\#"*results[index]
    end
end

# dice_outcomes(3, 100)




# =========== FIBONACCI ============================

def fibonacci(num = 1)

    result = []
    if num == 1
        result = [1]

    elsif num > 1
        result = [1,1]
        index = 2
        while (index < num)
            result << (result[-1] + result[-2])
            index += 1
        end
    end
    puts "The result of Fibonacci #{num} is #{result}"
end


# fibonacci 10



# =============STOCK PICKER =========================



def stock_picker(data)

    # Assumes the first 2 items of the array are the optimal pair
    best_profit = data[1] - data[0]
    best_arr = []
    i = 0
    while i < data.length - 1 do # Start the outer loop
        j = i + 1
        while j < data.length do # Start the inner loop
            if ((data[j] - data[i]) > best_profit)
                best_profit = data[j] - data[i]
                best_arr = [i, j]
            end
            j += 1
        end
        i += 1
    end
    print best_arr
    puts
end


# stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])



def anagrams(word)

    # This is an array of all possible permutations of the word
    permutations = word.split("").permutation.map(&:join).uniq.sort
    # This reads all the lines/words from the enable.txt file dictionary
    dict_arr = File.readlines("enable.txt")
    # This will contain all permutations of the word that is actually a word in the dictionary
    result = []
    permutations.each do |item|
        if dict_arr.include?(item + "\n") # Each item in the permutations array has "\n" tacked on
            result << item
        end
    end
    print result
    puts

end

# anagrams("pears")