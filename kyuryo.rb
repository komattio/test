a = gets.to_i

b = 0

for i in 1..a

    b = b + (10000 * i) * (1.0 / a)

end

puts b
