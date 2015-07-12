def fibo(num)
  arr = [1, 1]
  
  if num<=2 
    print arr[0,num]
    return 0   
  end
  
  while arr.length<num
    item = arr[arr.length-2]+arr[arr.length-1]
    arr << item
  end
  
  
  print arr
  
end

