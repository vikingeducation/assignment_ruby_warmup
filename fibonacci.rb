def fibonacci members=1
  fibonaccis = [1, 1]

  if members == 1 || members == 2
    fibonaccis[0, members]
  else
    (members - 2).times { fibonaccis << fibonaccis[-1] + fibonaccis[-2] }
    fibonaccis
  end

end

puts fibonacci(7).to_s