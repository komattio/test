l = gets.to_i
n = gets.to_i
x = gets.chomp.split(' ')
x = x.map(&:to_i)

minT = 0
for i in 0..n-1
    lxi = l - x[i]
    minary = [x[i], lxi].min
    minT = [minT, minary].max
end

maxT = 0
for i in 0..n-1
    maxT = [maxT, [x[i], l-x[i]].max].max
end

puts "minT: " + minT.to_s
puts "maxT: " + maxT.to_s
