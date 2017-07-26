def roll_dice(n)
    x = 0
    sum = 0
    while x < n
        face = 1 + rand(6)
        sum += face
        x += 1
    end
    sum
end

puts(roll_dice(3))