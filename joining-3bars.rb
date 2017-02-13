s = STDIN.gets.to_i # Lsum
n = STDIN.gets.to_i # nSticks
v = Array.new # sticks
e = Array.new( s, false ) # exist

n.times{
  a = STDIN.gets.to_i
  v << a
  e[a] = true if a < s
}
v.sort!

c = 0 # count
(0..n-3).each{|i|
  (i+1..n-2).each{|j|
    r = s-v[i]-v[j]
    next if r < 1
    c+=1 if r > v[j] && e[r]
  }
}

p c
