line = gets.chomp.split(' ')

xa = line[0].to_i
ya = line[1].to_i
xb = line[2].to_i
yb = line[3].to_i
xc = line[4].to_i
yc = line[5].to_i

a = xb - xa
b = yb - ya
c = xc - xa
d = yc - ya

ans = ((a * d) - (b * c)) / 2.0

puts ans.abs
