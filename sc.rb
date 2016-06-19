line1 = gets.chomp.split(' ')

n = line1[0].to_i
s = line1[1].to_i
t = line1[2].to_i

line2 = gets.chomp.split(' ')

br = Array.new
for i in 1..n-1
  line3 = gets.chomp.split(' ')
  br.push(line3)
end
