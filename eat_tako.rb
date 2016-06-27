num = gets.to_i

data = Array.new
for n in 1..num
    data.push(gets.chomp)
end

puts data.sort[0]
