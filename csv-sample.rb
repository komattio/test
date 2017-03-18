begin
  sales = []
  engineers = []
  File.open('./members.csv')do |file|
    puts "## 入力ファイルの内容"
    file.each_line do |line|
      puts line
    end
  end

  File.open('./members.csv')do |file|
    puts "## 営業部と技術部で分けて表示"
    file.each_line do |line|
      post = line.split(',')
      if(post[1] == "営業部")
        sales.push(line)
      elsif(post[1] == "技術部")
        engineers.push(line)
      end
    end
  end

  puts "営業部"
  sales.each{|line| puts line}
  puts "技術部"
  engineers.each{|line| puts line}

  # ファイルの出力
  File.open("sales.csv", "w") do |file|
    sales.each{|s| file.puts(s)}
  end
  File.open("engineers.csv", "w") do |file|
    engineers.each{|s| file.puts(s)}
  end

rescue SystemCallError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
rescue IOError=> e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
end
