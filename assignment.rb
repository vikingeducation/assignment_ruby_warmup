#Eric Glover
#3/26/17

#TM T-Swift

#Status : Operational, note that anagram runs for high word lengths (length = 15, is highest I've tested) now (which is cool)

#implementation notes: I'm feeling lazy so I didn't seed rand()
#consider adding a dice rolling game

#consider spicing up the dice_outcomes() with some nifty statistics like chi-squares and basic likelihoods of rolls being displayed on the right(?)
#write dice_outcomes using hashes

#consider adding stuff to anagrams, like printing out n! versus total valid_anagrams
  #and possibly printing out the execution time for the function, it'll be interesting to see how it performs for n = 12  #tried it, it doesn't, I got tired of waiting around 10mins in

#for given n roll n 6 sided dice and return the total
def roll_dice ( n )
  total = 0
  n.times do
    this_roll = rand(6) + 1
    total = total + this_roll
  end
  return total
end

#using arrays
#for a given number of 6 sided dice roll them rolls times and print out a frequency graph of all the totals
def dice_outcomes( dice, rolls)
  minimum_roll = dice * 1
  maximum_roll = dice * 6
  range = maximum_roll - minimum_roll + 1
  outcomes = Array.new(range, 0)
  (1..rolls).each do |i|
    total = roll_dice(dice)
    outcomes[total - minimum_roll] = outcomes[total - minimum_roll] + 1
  end
  #graph formatting issue -> [3] : xxxx
                            #[10] : xxxx
  #solution : add spacing based on digits in that roll
  highest_digits = maximum_roll.to_s.size
  outcomes.size.times do |i|
    digits = (i+minimum_roll).to_s.size
    puts "[#{i + minimum_roll}] " + " "*(highest_digits - digits) + ": " + "x"*outcomes[i]
  end

end
#dice_outcomes( 3, 100)

#print out the fibonacci sequence to the nth term (starting index = 1)
def fibonacci( n )
  current = 1
  previous = 1
  sequence = [1,1]

  #probably a cleaner way to handle these weird cases...but oh well
  if n == 1
    return 1
  elsif n == 2
    return sequence
  else
  end

  (n-2).times do |i|
    temp = current
    current = current + previous
    previous = temp
    sequence << current
  end
  return sequence
end

#given an array of stock prices (0th = day 1, 1st = day 2, etc..) pick the optimal day to buy a stock and then sell it
#return [buy_date, sell_date]
def stock_picker ( stock_prices )
  #manual searching ? or fancy smancy ruby methods...
  best_profit = 0
  buy_date = -1     #my compiler won't run this without buy_date and sell_date being declared locally to the function so set some flags and run it
  sell_date = -1
  stock_prices.length.times do |i|
    current_price = stock_prices[i]
    highest_sell_price = stock_prices[i..-1].max
    profit = highest_sell_price - current_price
    if profit > best_profit
      #find the correct day if it matters
        #note the i at the end, since you're searching a substring the index within the substring is different from the index in the original
      sell_date = stock_prices[i..-1].index(highest_sell_price) + i
      buy_date = i
      best_profit = profit
    end
  end
  return [buy_date, sell_date]
end

puts stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])

#helper function for the anagrams function      OPTIONS : char_sort , subtraction
#basic idea: check to see if entry is an anagram of word by checking the lengths then checking the character counts
  #consider moving this code into anagrams for reuse of charCount arrays, should help runtime slightly
#since I'm not manually checking the strings (low-level C style), I'm going to write some different ways to do this to learns stuffzzzz
  #(b/c I'm unsure which is actually optimal here)
def is_Anagram (entry , word, options = { } )
  #check length
  if entry.length != word.length
    return false
  end

  #check the weird silly case of : is_Anagram("cat", "cat")
  if word == entry
    return false
  end

  if options[:subtraction]    #option hashes == <3
    #other weird methods/criteria  #method 1, subtraction
    entry_chars_not_in_word = entry.split("") - word.split("")
    word_chars_not_in_entry = word.chars - entry.chars
    puts entry_chars_not_in_word
    puts word_chars_not_in_entry
    if entry_chars_not_in_word.size != 0 || word_chars_not_in_entry.size != 0
        return false
        puts "Not an anagram"
    end
  end


  if options[:char_sort]
    #check character counts #ruby-style, if we sort the char arrays of word and entry only anagrams will have equivalent sorted arrays
    if entry.chars.sort != word.chars.sort
      return false
    end
  end
  #other way, go through each character in word, find and remove that char from entry until word || entry is empty (assuming we already did the subtraction test )
  #word.chars.each do |character|
    #write this later if bored
  #end

  #method 2 : index popping #C-Style char indexing can be done by using .ord and .char but....
    #write this later if bored
      #entry_chars = Array.new(26, 0)
      #word_chars = []

  return true
end
#puts is_Anagram( "x", "z")
#puts is_Anagram("pears", "spear", {:char_sort => "do_it"} )
#puts is_Anagram("pears", "spear", { char_sort: "do", subtraction: "do" })
#puts is_Anagram("dank", "kan")
#puts is_Anagram("dank", "kanz")

#anagrams
#permutations : n! / (n - r)!
 #n = r for anagrams, and 0! = 1 (silly eric, remember your maths)
 #so duh, it's n!, likely values of n to be tested ... 1 <= n <= 12, maybe 1 <= n <= 8
 #12! = 479,001,600
 #10! = 3,628,800
 #9! = 362880
 #8!  = 40,320
 #6!  = 720
 #dictionary size = 172,823 words   #side-note, trying to crtl-v that into wordcounter.net kills the page lolololol, only took a min or two with a script in C
 #so above n = 8 it's probably better to check the dictionary first and then see if you can make that string...Or is it?
  #how da fuq are you supposed to do this optimially????


  #fuck it, let's try it the dumb way first, read the dictionary into a hash (well a set), and then check every permutation against the dictionary
  #surprisingly enough this runs pretty well for n <= 8, consider writing another method for n > 8 and checking the word.length at the beginning

def anagrams (fileName, word )
  #setup our file
  mode = "r"
  file = File.open(fileName, mode)

  #setup our dictionary
  dictionary = {}
  file.readlines.each do |line|
    dictionary[ line.chomp ] = true
  end
  valid_anagrams = []

  #if length is greater than 8 it's more efficient to check each entry rather than check each permutation of word against the dictionary
  if word.length > 8
    dictionary.keys.each do | entry |
      if is_Anagram(entry, word, { char_sort: "do"} )
        valid_anagrams << entry
      end
    end
  else
    puts "Heres all the anagrams of #{word} that are words:"
    word.split("").permutation(word.length).each do | permutation |
      #puts permutation.join
      if dictionary[permutation.join] == true
        if permutation.join != word             ####squirrely stuff here
          valid_anagrams << permutation.join
        else
        end
      else
      end
    end
  end

  #problems, you can get non-unique permutations with words that repeat a character
  #remove them with Ruby magic
  valid_anagrams.uniq!
  puts valid_anagrams
  puts "There are #{valid_anagrams.size} anagrams of #{word} in the Scrabble dictionary"
  puts "is #{word} in the dictionary ? ===> #{dictionary[word]}"
  return valid_anagrams
  file.close
end

#anagram tests
#anagrams("enable.txt", "cat")
#anagrams("enable.txt", "pears")
#anagrams("enable.txt", "extemporized")
#anagrams("enable.txt", "dictionary")
#anagrams("enable.txt", "oxyphenbutazone")
#anagrams("enable.txt", "blahhh")
#anagrams("data.txt", "fancy")
#anagrams("data.txt", "Dank Memez")
