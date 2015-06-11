def fibonacci(digits)
  fibo_array=[1,1];
  
  for n in (2..digits-1)
    fibo_array[n]=fibo_array[n-1]+fibo_array[n-2];
  end
  return fibo_array;
end

