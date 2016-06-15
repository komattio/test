x = STDIN.gets.chomp.to_i
y = STDIN.gets.chomp.to_i

for i in 1..x
    for j in 1..y
        num = i * j

        printf("%02d ", num)
    end
    print "\n"
end
