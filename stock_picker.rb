def stock_picker(arr)
  print arr
  puts""
  max = 0
  stock = Hash.new(0);
  i = 1
  while i<arr.length
   max =0
   dsta =0
   dend = 0
   stock[i] = arr[i-1]
   i = i+1
  end
  stock = stock.sort_by{|k, v| v}
  print stock
  stock.each do|a,b|
                 stock.each do|c,d|
                          if max<(d-b)&&a<c
                                             max = d-b
                                             dsta = a
                                             dend = c
                                             end
                      end
            end
puts""
puts "#{max} is the best return"
puts "#{dsta} is the best start date"
puts "#{dend} is the best end date"
end
stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])
