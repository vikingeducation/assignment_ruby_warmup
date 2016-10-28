puts "How far you wanna display the Fibonacci sequence? (Integers > 0 please)"
n = gets.chomp.to_i

def fibonacci(n)
  fibs_array = [0, 1]
  if n > 2
    n.times {
      newest = fibs_array[-1] + fibs_array[-2]
      fibs_array << newest
    }
  elsif n == 1
    fibs_array = [0]
  end
  print fibs_array
end

fibonacci(n)