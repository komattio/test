def chkIp (ip)
  ary = Array.new

  ary = ip.split('.')

  #p ary

  ansAry = Array.new

  ans = "True"
  if(ary.length == 4)
    for n in ary
      if(!(0 < n.length && n.length <= 3))
        ans = "False"
      end
    end
  else
    ans = "False"
  end

  puts ans
end

num = gets.to_i
p "num: #{num}"

param = Array.new
for i in 1..num
    param.push(gets)
    p "param: #{param[i-1]}"
end


for i in 1..num
  chkIp(param[i - 1])
end
