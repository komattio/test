n = gets.to_i

ary = Array.new
for i in 1..n
  line = gets.split(' ')
  ary.push(line)
end

p ary

for a in ary
  p a
  l = a[0]
  r = a[1]
  k = a[2]
  ary.delete(a)
  if(ary.length == 1)
    p ary
    break
  end
end
