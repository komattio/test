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

def search(l, r, f)
  while r-l > 1
    k = (l+r)/2
    f.call(k) ? (l=k) : (r=k) 
  end
  l
end

(0..n-3).each{|i|
  r = s-v[i]
  a = search(i+1, n-1, lambda{|k| v[k]+v[n-1] < r})
  b = search(i+1, n-1, lambda{|k| v[k]+v[k+1] < r})

  while a <= b
    c+=1 if e[r-v[a]]
    a+=1
  end
}

p c
