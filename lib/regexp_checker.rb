print 'Text?: '
text = gets.chomp

# 例外処理を組み込んで再入力可能とする
begin
  print 'Pattern?: '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue => e
    puts "Invalid pattern: #{e.message}"
    retry
end

# scanmethod self に対して pattern を繰り返しマッチし、マッチした部分文字列の配列を返します。
matches = text.scan(regexp)
if matches.size > 0
  puts "Matched: #{matches.join(',')}"
else
  puts "Nothing matched"
end