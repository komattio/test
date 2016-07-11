require 'json'

p JSON.parse('[1, 2, 3]')

p JSON.parse('{"foo" : "bar"}')

p JSON.generate({"foo" => "bar"})

p 1.to_json

p Time.local(2011, 12, 5, 7, 29, 33).to_json

p data = [1, 2, 3, {"foo" => "bar"}]

p JSON.generate(data)

p JSON.pretty_generate(data)

