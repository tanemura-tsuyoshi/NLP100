# 07. テンプレートによる文生成
# 引数x, y, zを受け取り「x時のyはz」という文字列を返す関数を実装せよ．
# さらに，x=12, y="気温", z=22.4として，実行結果を確認せよ．

x = ARGV[0]
y = ARGV[1]
z = ARGV[2]
def make_template(x,y,z)
  puts x + "時の" + y + "は" + z
end

make_template(x,y,z)