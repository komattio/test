n = gets.to_i
a = gets.chomp.split(' ')
ans = 0
for i in 0..n-1
    for j in i..n-1
        for k in j..n-1
            len = a[i].to_i + a[j].to_i + a[k].to_i
            maa = [a[i].to_i, a[j].to_i, a[k].to_i]
            ma = maa.max
            rest = len - ma
            if ma < rest
                if ma < len
                    ans = len
                else
                    ans = ma
                end
            end
        end
    end
end

puts ans 

