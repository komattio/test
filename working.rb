require 'json'

file=open('sample.json')
p 'start'
file.each_line { |line| 
    json = JSON.load(line)
    puts json['kana']
}

