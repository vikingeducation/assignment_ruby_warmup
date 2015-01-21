def roll_dice(n=1)
 sum = 0
 n.times do
	number=rand(1..6)
	sum=sum+number
 end
 return sum
end

a = roll_dice(4)
b = roll_dice(3)
c= roll_dice(2)
d=roll_dice

puts a
puts b
puts c
puts d