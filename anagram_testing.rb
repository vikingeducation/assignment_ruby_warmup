require "pry"

def anagrams(word)
  
  output=[]
  wordhash=Hash.new(0);
  
  word.downcase.split("").each do |key|
    wordhash[key]=+1
  end
  
  arr = IO.readlines("enable.txt")

  arr.each do |dicword|
    dichash=Hash.new(0)

    dicword.downcase.chomp.split("").each do |key|
      dichash[key]+=1
    end

    if dichash == wordhash
      output << dicword
    end
    
  end

  puts output
  
end

