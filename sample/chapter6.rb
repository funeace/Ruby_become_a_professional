text = "私の誕生日は1977年7月17日です。"

if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  # キャプチャの結果名はそのまま変数に格納される
  puts "#{year}/#{month}/#{day}"
end

# 以下の場合はエラーになる。変数の中に変数が生まれてしまうから？
# regexp = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
# if  regexp =~ text
#   # キャプチャの結果名はそのまま変数に格納される
#   puts "#{year}/#{month}/#{day}"
# end


text = "郵便番号は123-4567です"
text[/\d{3}-\d{4}/] #=> ‘123-4567’

# キャプチャを使うと要素の番号を指定できる
text = "誕生日は1977年7月17日です"
text[/(\d+)年(\d+)月(\d+)日/ , 3] #=> 17

address = '123,456-789'

# 第1引数に文字列を渡すと、完全一致する文字列を第２引数で置き換える
p address.gsub(',', ':') #=>’123:456-789’

# 正規表現を使うとこうなる
p address.gsub(/,|-/,':') #=>’123:456:789'