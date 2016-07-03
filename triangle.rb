n = gets.to_i
a = gets.chomp.split(' ')
ans = 0
for i in 0..n-1
    for j in i+1..n-1
        for k in j+1..n-1
            len = a[i].to_i + a[j].to_i + a[k].to_i
            p "len: " + len.to_s
            maa = [a[i].to_i, a[j].to_i, a[k].to_i]
            p "maa: " + maa.to_s
            ma = maa.max
            p "ma: " + ma.to_s
            rest = len - ma
            p "rest: " + rest.to_s
            if ma < rest
                if ma < len
                    ans = len
                else
                    ans = ma
                end
            end
            p "ans: " + ans.to_s
            p "-----------------"
        end
    end
end

puts ans 

