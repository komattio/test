len = gets.to_i

abc = ["a", "b", "c"]

def hoge(str)
  str = str + "aaaa"
  return str
end

for i in abc
  x = i
  if(len == 1)
    break
  end
  for j in 1..len
    x = hoge(x)
    puts x
  end
end
