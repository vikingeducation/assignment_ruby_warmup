#roll_dice

def roll_dice (n)
	output = []
	n.times do
		output << rand(1..6)
	end
	output.inject(0) {|memo,num| memo += num}
end

#roll_dice_outcomes

def rollDice (n)
	output = []
	n.times do
		output << rand(1..6)
	end
	output.inject(0) {|memo,num| memo += num}
end

def makeResultingRolls (dice,rolls)
	resulting = []
	rolls.times do
		resulting.push(rollDice(dice))
	end
	resulting
end

def makeRollHash (possible,resulting)
	rollHash = {}
	possible.each do |roll|
		rollHash[roll] = resulting.count(roll)
	end
	rollHash
end

def visualizeRoll (hash)
	hash.keys.each do |key|
		visual = ""
		hash[key].times do
			visual += "#"
		end
		hash[key] = visual
	end
	hash
end

def roll_dice_outcomes (numDice,numRolls)
	possibleRolls = (1*numDice..6*numDice)
	resultingRolls = makeResultingRolls(numDice,numRolls)
	resultingRollsFlattened = resultingRolls.flatten

	rollHash = makeRollHash(possibleRolls,resultingRollsFlattened)
	visualized = visualizeRoll(rollHash)
	visualized.each_key {|key| puts "#{key}: #{visualized[key]}"}
end

#fibonacci
def fibonacci (n)
	return n <= 1 ? n : fibonacci(n-1) + fibonacci(n-2)
end

#stock_picker
def stock_picker(prices)
	i = 0
	greatestProfitDates = []
	greatestProfit = 0
	while i < prices.length
		j = i + 1
		while j < prices.length
			if (prices[j] - prices[i]) > greatestProfit
				greatestProfitDates = [i,j]
				greatestProfit = prices[j] - prices[i]
			end
			j += 1
		end
		i += 1
	end
	greatestProfitDates
end

#anagrams

def rotate (string)
	chars = string.chars
	temp = chars[0]
	i = 1
	while i < chars.length 
		chars[i-1] = chars[i]
		i += 1
	end
	chars[i-1] = temp
	chars.join('')
end

def makeAnagrams (string)
	i = 0
	output = []
	while i < string.length
		output.push(string)
		substring = string.slice(1,string.length-1)
		j = 0
		while j < substring.length
			output.push(string[0] + substring)
			substring = rotate(substring)
			j += 1
		end
		string = rotate(string)
		i += 1
	end
	output
end

def dictCheck (permutation)
	enableFile = File.readlines('enable.txt')
	enableFile = enableFile.map {|word| word.strip}
	regexPermutation = Regexp.new('\b' + permutation + '\b')
	enableFile.any? {|word| !!(regexPermutation.match(word))}
end


def anagrams (string)
	string = string.upcase
	permutations = makeAnagrams(string)
	permutations = permutations.uniq.select do |permutation| 
		dictCheck(permutation.strip.downcase)
	end
	permutations
end