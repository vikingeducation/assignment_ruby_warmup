def fibonacci(num)
  if num == 1
    p [1] # by defenition
  elsif num == 2
    p [1, 1] # by defenition
  else
    result = [1, 1]

    #iterate thru and add sum of previous 2 indexes
    2.upto(num - 1) do |index|
      result << (result[index - 1] + result[index - 2])
    end
    p result
  end
end

fibonacci(3)
