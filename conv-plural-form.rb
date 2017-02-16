
def convPurlalForm(s)
  # 末尾をesにする
  if(/(s|o|x)/ =~ s[-1])
    puts "#{s.join}es"
  elsif(/(sh|ch)/ =~ s[-2, 2].join)
    puts "#{s.join}es"
  # 末尾をvesにする
  elsif(/(f)/ =~ s[-1])
    s = s.join
    s.slice!(-1)
    puts "#{s}ves"
  elsif(/(fe)/ =~ s[-2, 2].join)
    s = s.join
    s.slice!(-2,2)
    puts "#{s}ves"
  # 末尾をiesにする
  elsif(/(y)/ =~ s[-1] && (!(/(a|i|u|e|o)/ =~ s[-2])))
    s = s.join
    s.slice!(-1)
    puts "#{s}ies"
  # 末尾をsにする
  else
    s = s.join
    puts "#{s}s"
  end
end


inpStr = gets.chomp
s = inpStr.chars
convPurlalForm(s)
