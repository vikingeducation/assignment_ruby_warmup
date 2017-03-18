def roll_dice(times)
	diceNumbers = []
	while times > 0
		diceNumbers.push(rand(1..6))
		times -= 1
	end

	sum = 0
	diceNumbers.each do |x|
		sum += x	
	end
	puts sum
end

def roll_dice_2(times, amt)
  
  diceNumbers = []
    (1..times).each do
        diceNumbers.push(rand(1..6) * amt)
	end

	obj = {}
  
  myRange = amt * 6

	(amt..myRange).each do |x|
		obj[x] = 0
	end
	
    diceNumbers.each do |y|
        num = diceNumbers.count(y)
        obj[y] = num
    end
    
    print obj
end

def fibonacci(nth)
	startingNum = 1
	(1..nth).each do
		startingNum += startingNum
	end
	puts startingNum
end

myarr = [2,8,3,7,4,6,5,1,10]

def stock_picker(array)
    select_index = array[0]
    greatDifference = 0
    arrOfIndexes = []
    indexes = ''
    
    array.each do |z|
        select_index = z
        array.each do |x|
            if x - select_index > greatDifference
                greatDifference = x - select_index
                indexes = "#{x}, #{select_index}"
            end
        end
    end
    puts indexes
end

def anagrams(word, dictionary)
    correct_words = []

    dictionary.each do |x|
        myword = x
        if word.length == x.length
            
            original_word = word.split("").sort().join("").downcase
            myword = myword.split("").sort().join("").downcase
            
            if original_word == myword
                correct_words.push(x)
            end
        end
    end
    return correct_words
end
