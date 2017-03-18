begin
  File.open('./members.csv')do |file|
    puts file
    puts "入力ファイルの内容"
    file.each_line do |line|
      puts line
    end
  end

  File.open('./members.csv')do |file|
    puts file
    puts "営業部の人だけ表示"
    file.each_line do |line|
      post = line.split(',')
      if(post[1] == "営業部")
        puts line
      end
    end
  end

rescue SystemCallError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
rescue IOError=> e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
end
