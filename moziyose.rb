print (1..10).map{|e| e*100}.map{|e| "% 5s" % ("￥"+e.to_s) } .join("\n")
