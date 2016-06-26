def fibonnaci(final_index)
  case final_index
  when 0 
    return []
  when 1 
    return [1]
  end
  
  sequence = [1,1]

  (final_index - 2).times do 
    new_value = sequence[-1] + sequence[-2]
    sequence << new_value
  end

  sequence
end
