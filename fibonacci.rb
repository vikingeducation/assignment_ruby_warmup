def fibonacci(digits)
  fibo_array=[1,1];
  
  2.upto(digits-1) do |n|
    fibo_array[n]=fibo_array[n-1]+fibo_array[n-2];
  end
  puts fibo_array;
end

fibonacci(7);
  