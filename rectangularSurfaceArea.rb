inp = gets.split(' ')
a = inp[0].to_i
b = inp[1].to_i
c = inp[2].to_i

ab = a * b
ac = a * c
bc = b * c

ans = 2 * (ab + ac + bc)

p ans
