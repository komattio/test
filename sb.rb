input = gets.chomp
input = input.gsub(/\./, '')
line = input.split(' ')
#p input
#p line

len = 0
for w in line
  if(w.match(/\{*\}/))
    t = w.delete('{').delete('}')
    ta = t.split(',')
    #p "kakko: #{w}"
    #p "t: #{t}"
    tl = 0
    for j in ta
      #p j
      if tl <= j.length
        tl = j.length
      end
    end
    len += tl
  else
    len += w.length
  end
end

puts len.quo(line.length).to_f
