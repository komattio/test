line1 = gets.split(' ')

n = line1[0].to_i
r = line1[1].to_i

q = 2*r

ans = Array.new
for i in 1..n
    line = gets.split(' ')

    h = line[0].to_i
    w = line[1].to_i
    d = line[2].to_i

    min = h
    if w <= min
        min = w
    elsif d <= min
        min = d
    end

    if q <= min
        ans.push(i)
    end
end

for j in 0..ans.length
    puts ans[j]
end
