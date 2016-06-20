m = gets.to_i

if m < 100
    vv = 0
elsif 100 <= m && m <= 5000
    vv = m / 1000.0
elsif 6000 <= m && m <= 30000
    vv = (m / 1000) + 50
elsif 35000 <= m && m <= 70000
    vv = (m - 30000) / 5 + 80
elsif 70000 <= m
    vv = 89
end

puts vv
