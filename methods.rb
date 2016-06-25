def roll_dice(n)
  sum = 0
  (1..n).each do
    sum += 1 + rand(6)
  end
  return sum
end

#########################################

def dice_outcomes(dice,rolls)
  outcomes= Hash.new(0)

  (1..rolls).each do
    outcomes[roll_dice(dice)] += 1
  end

  (dice..(6*dice)).each do |x|
    pounds = ""
    (1..outcomes[x]).each {pounds += "#"}
    puts "#{x}:".ljust(5) + "#{pounds}"
  end

  return outcomes
end

###########################################

def fibonacci(n)
  if n <= 0
    return []
  elsif n==1
    return [1]
  elsif n==2
    return [1,1]
  else
    array = [1,1]
    (2...n).each do |i|
        array[i] = array[i-1]+array[i-2]
    end
    return array
  end
end

#################################################

def stock_picker(a)
  pair = [0, 1]
  (a.length-1).times do |x|
    (a.length-x).times do |i|
        pair = [x, x+i] if ((a[x+i]-a[x])>(a[pair[1]]-a[pair[0]]))
    end
  end
  puts pair.join(" ")

end

#####################################################

def anagrams(word)

  file = File.open("enable.txt", "r")
  dictionary = file.read.split("\n")
  file.close

  dictionary = dictionary.select {|x| x.length == word.length}

  (0...word.length).each do |i|
    dictionary = dictionary.select do |y|
      y.count(word[i])==word.count(word[i])
    end
  end

  dictionary.delete(word)
  dictionary = dictionary.collect {|z| z.upcase}

  return dictionary
end


#############################################################
