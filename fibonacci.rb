def fibonacci(length=3)
  before = 0
  current = 1
  after = before + current
  results = Array.new
  length.to_i.times do |i|
    if i == 0
      results << 1
    else
      results << after
      before = current
      current = after
      after = before + current
    end
  end
  puts(results)
end
