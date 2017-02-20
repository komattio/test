print "メ゛ッ゛セ゛ー゛ジ゛を゛入゛力゛し゛て゛く゛だ゛さ゛い゛い゛い゛い゛い゛い゛い゛い゛：゛"
inputmsg = gets.chomp
outputmsg = "";

# 藤原竜也風にする
inputmsg.each_char { |a| outputmsg = outputmsg + a + "゛" }
puts outputmsg

# 藤原竜也風をもとに戻す
puts outputmsg.delete("゛")
