def dice_roll(numDice=1)
    random = Random.new
    roll_array = []
    numDice.times do
        rolled_num = random.rand(0...6)+1  
        roll_array << rolled_num
    end
    
    total = 0
    roll_array.each do |roll|
        new_total = total + roll
        total = new_total
    end
    total
end

def dice_outcomes(numDice=1,timesRolled=1)
    outcome_array = []
    timesRolled.times do
        outcome_array << dice_roll(numDice)    
    end
    
    outcome_array.each do |individual_outcome|
        puts individual_outcome
    end
    
end

def fibonacci( n )
  return  n  if ( 0..1 ).include? n
   (fibonacci( n - 1 ) + fibonacci( n - 2 ))
end

def stock_picker(prices)
    biggestProfit = 0
    profitDates = []
    i =0
    while i < prices.length
        j = i + 1
        while j < prices.length
            if (prices[j] - prices[i] > biggestProfit)
                biggestProfit = prices[j] - prices[i]
                profitDates = [i,j]
            end
        j = j + 1
        end
    i = i + 1
    end
    profitDates
end


def makeAnagrams(str)
    str.chars.to_a.permutation.map(&:join)
end

def checkFilePermutations(permutation)
    enableFile = File.readlines('enable.txt')
	enableFile = enableFile.map {|word| word.strip}
    regexPermutation = Regexp.new('\b' + permutation + '\b')
	enableFile.any? {|word| !!(regexPermutation.match(word))}
end

def anagrams(str)
    str = str.downcase
    permutations = makeAnagrams(str)
    permutations = permutations.uniq.select do |permutation|
        checkFilePermutations(permutation.strip.downcase)
    end
    permutations
end


anagrams("pears")