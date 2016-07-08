$n = gets.to_i
$a = gets.split(' ')
$a = $a.map(&:to_i)
$k = gets.to_i

puts("----------")
puts("input n: #{$n}")
puts("input a: #{$a}")
puts("input k: #{$k}")
puts("----------")

def dfs(i, sum)
    puts "dfs start"
    puts("input i: #{i}")
    puts("input sum: #{sum}")
    puts("----------")
    if i == $n
        return sum == $k
    end

    if dfs(i + 1, sum)
        return true
    end

    if dfs(i + 1, sum + $a[i])
        return true
    end

    return false
end

def solve
    puts "solve start"
    if dfs(0, 0)
        puts "Yes"
    else
        puts "No"
    end
end

puts "main start"
solve()

