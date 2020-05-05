# rjustは特定の文字列で文字を埋めてくれるメソッド
# 押さえておくポイント
# 1. 最初の繰り返し処理では#が入ること
# 2. ブロックの中の hex + n.to_s(16).rjust(2,'0')で作成された文字列は次の繰り返しのhexに入る
# 3. 繰り返し処理が最後まで到達したらブロックの戻り値がinject自身の戻り値になる
def to_hex(r,g,b)
  [r,g,b].inject("#") do |hex,n|
    hex + n.to_s(16).rjust(2,'0')
  end
end

# 16進数の文字列を10進数に変換してくれるhexメソッドを使う
def to_ints(color_code)
  r = color_code[1..2]
  g = color_code[3..4]
  b = color_code[5..6]
  [r,g,b].map { |n| n.hex }
end