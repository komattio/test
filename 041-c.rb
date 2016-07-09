n = gets.to_i
a = gets.split(' ')
a = a.map(&:to_i)
k = Array.new
for i in 1..a.length
    k.push(i)
end

ary = [k, a].transpose
h = Hash[*ary.flatten]

ans = Hash[h.sort_by{|_, v| -v}]

ans.each{ |k, v|
    puts k
}
