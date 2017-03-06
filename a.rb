p "Q1"
hash = { a: 1, b: 2, c: 3, d: 4 }
result = []
hash.each do |k, v|
  result << k
end

p result
p hash.keys
p hash.values
p "=================="

p "Q2"
result = []
[1,2,3,4].each do |n|
  result << [n]
end

p result
p [1,2,3,4].map { |n| [n] }
p "=================="

p "Q3"
hash = {}
[[:a, 1], [:b, 2], [:c, 3], [:d, 4]].each do |ary|
  key = ary[0]
  value = ary[1]
  hash[key] = value
end

p hash

hash = {}
[[:a, 1], [:b, 2], [:c, 3], [:d, 4]].each_with_object({}) do |ary|
  key = ary[0]
  value = ary[1]
  hash[key] = value
end
p hash
p "=================="

p "Q4"
result = []
[1,2,3].each do |n|
  result << n * 2
end

p result

p [1,2,3].map { |n| n * 2 }
p "=================="

p "Q5"
n = 1
result = []
hash = {}
[:a, :b, :c].each do |key|
  hash[key] = n
  n += 1
end
p hash

p [:a, :b, :c].each_with_index.map{ |n, idx| { :"#{n}" => idx + 1} }
p "=================="

p "Q6"
result = []
{ a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }.each do |key, value|
  if value % 2 == 0
    result << key
  end
end
p result

a = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }.select { |_,v| v%2 == 0}.keys
p a
p "=================="

p "Q7"
result = 1
[1,2,3,4,5].each do |n|
  result = result * n
end
p result

p [1,2,3,4,5].inject(&:*)


p "=================="

p "Q8"
n = 0
hash = { taro: { result: true, score: 50 }, jiro: { result: false, score: 30 }, saburo: { result: true, score: 10 }, shiro: { result: false, score: 100 } }
hash.each { |k, v| n += v[:score] if v[:result] }
p n

hash = { taro: { result: true, score: 50 }, jiro: { result: false, score: 30 }, saburo: { result: true, score: 10 }, shiro: { result: false, score: 100 } }
p hash.select { |_,v| v[:result] }.map { |_,v| v[:score] }.inject(&:+)

