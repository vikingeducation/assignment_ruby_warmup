def fibonacci(num_places)
    first_number = 0
    second_number = 1
    fibs = []

    num_places.times do
        fibs << second_number
        second_number += first_number
        first_number = second_number - first_number
    end

    fibs
end