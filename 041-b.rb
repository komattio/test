a = gets.split(' ')
a = a.map(&:to_i)

x = a[0] * a[1] * a[2]
puts "x = #{x}"

y = 10 ** 9 + 7
puts "y = #{y}"

ans = x % y
puts "ans: #{ans}"
