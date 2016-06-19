line = gets.split(' ')

a = line[0].to_i
b = line[1].to_i

c = b % a
puts "C: #{c}"
d = b / a
puts "D: #{d}"
if (0 < c)
  d += 1
end

puts "ANSWER: #{d}"
