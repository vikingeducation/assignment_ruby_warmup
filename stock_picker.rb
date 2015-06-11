def stock_picker (stock_array)
  
profit=0;  
pair=[];
  0.upto(stock_array.length-1) do |n|
    (n+1).upto(stock_array.length-1) do |m|
      
      if profit < stock_array[m] - stock_array[n]
        profit=stock_array[m] - stock_array[n];
        puts pair=[n,m];
      end
    end
  end
  puts pair;
end

  stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]);