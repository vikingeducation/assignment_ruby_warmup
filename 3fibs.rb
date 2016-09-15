def fibonacci(how_many)
  x = 1
  y = 1
  z = 0
  fib_list = [1, 1]
    if how_many == 1
      puts 1
      return [1]
    elsif how_many == 2
      puts [1, 1]
      return [1, 1]
    else
    end
  how_many = how_many - 2
    if how_many <= 0
      puts "you cannot request 0 or negative terms"
      return nil
    end
  how_many.times do |sequence|
    z = x + y
    y = x
    x = z
    fib_list.push(z)
  end
  puts fib_list
  return fib_list
end

fibonacci(1)
puts "---------------"
fibonacci(10)
puts "---------------"
fibonacci(20)
puts "---------------"
fibonacci(0)