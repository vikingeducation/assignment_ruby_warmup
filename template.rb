# Take two arrays of strings and return an array with all combinations xof their items, listing first items first.
def combinations (a, b)
  c = []
  a.each do |i|
    b.each do |j|
      c.push(i + j)
    end
  end

  print "Array a = ", a, "\n"
  print "Array b = ", b, "\n"
  print "Array c of combinations of a and b ", c, "\n"
end

# Note: array values could be input by user and so made variable
array1 = ["xxx", "yyy", "zzz"]
array2 = ["aaa", "bbb"]
combinations(array1, array2)
