line = gets.split(' ')

n = line[0].to_i
x = line[1].to_i

a = n - x

puts
if x <= a
  puts x - 1
elsif a <= x
  puts n - x
end
