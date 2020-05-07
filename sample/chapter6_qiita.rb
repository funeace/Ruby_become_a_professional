text = <<TEXT
I love Ruby.
Python is a  great language.
Java and JavaScript are different.
TEXT

p text.scan(/[A-Z][A-Za-z]+/)


text2 = <<TEXT
私の郵便番号は1234567です。
僕の住所は6770056 兵庫県西脇市板波町1234だよ。
TEXT

puts text2.gsub(/(\d{3})(\d{4})/, '\1-\2')

# 電話番号を出力する正規表現①
tel_1 = <<-TEL
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEL
p tel_1.scan /\d\d-\d\d\d\d-\d\d\d\d/
# => ["03-1234-5678"]

# クープバゲットを抽出したい
coupbaguette = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT

p coupbaguette.split(/\n/).grep(/クープ.?バ[ケゲ]ット/)


html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')

puts replaced

regex_method = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')
     
hello('Bob')
  
hello('Carol')
TEXT

# 空白またはタブしかない行をnilに変換する
puts regex_method.gsub(/^[ \t]+$/, '')