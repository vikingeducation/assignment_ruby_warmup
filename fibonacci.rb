def fibonacci(n)
    arr = Array.new
    term_prev = 1
    term_curr = 1
    
    arr.push(term_prev)
    arr.push(term_curr)

    (n-2).times do |x|
    	new_term = term_prev + term_curr
    	arr.push(new_term)
    	term_prev,term_curr = term_curr, new_term
    end
    return arr.inspect
end

puts fibonacci(7)	


