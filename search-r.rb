inputAry = Array.new

for i in 1..12
  inputAry.push(gets.chomp)
end

cnt = 0
for j in inputAry
  if(j.include?("r"))
    cnt += 1
  end
end

p "cnt: #{cnt}"
